## Code Integration

## Library/Module imports
import sensor, image, pyb, os, time, math
from pyb import UART
from array import array
from pyb import DAC
from pyb import Timer

## ---------------------------------------------------- PARAMETERS -------------------------------------------------------------------

DC_offset = 3500-600-300 #3500 - 600
Amplitude = 4095-DC_offset-700-700
Frequency = [1,0.5,0.1]
PeriodTable = [10,2,1]
Period = 10 #works within 1 to 10
Num_per_wave =100
capture_delay = Period/Num_per_wave
buffersize = 1024
flag = True
packetSize = 3000
mode = 0 # SMFI = 0, MSI = 1, to change mode of button press run change this value
MSI_Amplitude = 2600

#sleep condition
sleepFlag = False

imageCount = 0
freqCount = 0
runNum = 0

# MSI/SMFI
mux16 = [['0', '0', '0', '0'],
         ['0', '0', '0', '1'],
         ['0', '0', '1', '0'],
         ['0', '0', '1', '1'],
         ['0', '1', '0', '0'],
         ['0', '1', '0', '1'],
         ['0', '1', '1', '0'],
         ['0', '1', '1', '1'],
         ['1', '0', '0', '0'],
         ['1', '0', '0', '1'],
         ['1', '0', '1', '0'],
         ['1', '0', '1', '1'],
         ['1', '1', '0', '0'],
         ['1', '1', '0', '1'],
         ['1', '1', '1', '0'],
         ['1', '1', '1', '1'],
        ]



## --------------------------------------------------- FUNCTIONS, OTHER --------------------------------------------------------------

def GreenBlink(duration):
    green_led.on()
    time.sleep(duration)
    green_led.off()

def sendEndPacket():
    uart.write('\r'.encode()) # string end null character
    uart.write('\n'.encode()) # string end null character
    uart.write('\r'.encode()) # string end null character
    uart.write('\n'.encode()) # string end null character

def CRC32_Table(bytes, n):
    # Define constants
    POLYNOMIAL = 0x04C11DB7  # Divisor is 32-bit
    TABLE_SIZE = 256

    # Initialize lookup table
    TABLE_EV = bytearray(TABLE_SIZE*4)  # Allocate 256 * 4 bytes for lookup table
    __TABLE_INIT = False

    # Compute lookup table if not initialized
    if __TABLE_INIT:
        pass  # Follow lookup
    else:
        # Initialize all tables
        for j in range(TABLE_SIZE):
            b = j
            crc = 0
            crc ^= (b << 24)  # Move byte into MSB of 32-bit CRC
            for k in range(8):
                if (crc & 0x80000000) != 0:  # Test for MSB = bit 31
                    crc = ((crc << 1) ^ POLYNOMIAL) & 0xffffffff
                else:
                    crc <<= 1
            # Now add value to table
            TABLE_EV[j*4:j*4+4] = crc.to_bytes(4, 'little')
        __TABLE_INIT = True

    # Start CRC32 calculations
    crc = 0xffffffff  # CRC value is 32-bit

    for j in range(n):
        b = bytes[j]
        b = reverse(b)
        bk = b
        b = b ^ ((crc >> 24) & 0x0ff)
        crc = (crc << 8) ^ int.from_bytes(TABLE_EV[b*4:b*4+4], 'little')

    crc = crc ^ 0xffffffff

    # Reverse complete 32-bit word bit by bit
    crc = (
        reverse((crc & 0xff000000) >> 24) +
        (reverse((crc & 0x00ff0000) >> 16) << 8) +
        (reverse((crc & 0x0000ff00) >> 8) << 16) +
        (reverse((crc & 0x000000ff)) << 24)
    )

    return crc

def rev(s):
    r = ""
    for c in s:
        r = c+r

    return r

def reverse(b):
    binary_str = bin(b)[2:]  # Remove '0b' prefix from binary string
    padded_str = '0' * (8 - len(binary_str)) + binary_str  # Pad with zeros
    reversed_str = rev(padded_str)  # Reverse the string
    return int(reversed_str, 2)

## ---------------------------------------------------- SETUP ------------------------------------------------------------------------

# Status LED Setup
red_led = pyb.LED(1)    #Setup Red LED
green_led = pyb.LED(2)  #Setup Green LED

red_led.on()            #LED RED durring setup

# UART Setup
uart = UART(1, 115200) #Bus ,  baudrate
uart.init(115200, bits = 8, parity = 0, stop = 1, timeout=1000)
#time.sleep_ms(3000) #Moredelay

# Button Setup
button = pyb.Pin("P7", pyb.Pin.IN, pyb.Pin.PULL_DOWN)     # This needs to be changed, as P2 is used in new design (to P7?) !!!!!!!!!!!
pressed = 1 #if PULL_Down=1 if PULL_UP=0

# Configure DAC
dac = DAC(2,bits=12)
dac.write(0);

# Global shutter camera setup and confugurations
sensor.reset()                      # Reset and initialize the sensor.
sensor.set_pixformat(sensor.GRAYSCALE) # Set pixel format to RGB565 (or GRAYSCALE)
sensor.set_framesize(sensor.QVGA)   # Set frame size to QVGA (320x240)
sensor.set_auto_gain(False,20)
sensor.set_auto_exposure(False, exposure_us=150000) # make smaller to go faster
sensor.set_windowing((120, 120))    ##!!!Make sure to include this line!!! (windowing is not optional but might be scalable)
sensor.skip_frames(time = 2000)     # Wait for settings take effect.

# Configure select pins
S_Zero = pyb.Pin("P2", pyb.Pin.OUT_PP)  # For 1:16 multiplexer
S_One = pyb.Pin("P3", pyb.Pin.OUT_PP)
S_Two = pyb.Pin("P4", pyb.Pin.OUT_PP)
S_Three = pyb.Pin("P5", pyb.Pin.OUT_PP)

S_Mode = pyb.Pin("P8", pyb.Pin.OUT_PP)  # For 1:2 multiplexer, 0 = MSI, 1 = SMFI   !!!! This is the opposite of 'mode' !!!!

Enable = pyb.Pin("P9", pyb.Pin.OUT_PP)

red_led.off()
GreenBlink(0.2)

print("Ready to capture")


## ---------------------------------------------------- SMFI -------------------------------------------------------------------------

def SMFI:
    print("Capture Started - SMFI")

    # Set multiplexers and enable to driver channel 2 with SMFI mode
    S_Mode = 1
    S_Zero = mux16[2][0]
    S_One = mux16[2][1]
    S_Two = mux16[2][2]
    S_Three = mux16[2][3]
    Enable = 1

    freqCount = 0

    while freqCount <3:

        # Calculate Period
        Period = PeriodTable[freqCount]
        print(Period)

        # Update DAC values
        dac = DAC(2,bits=12)
        dac.write(DC_offset)

        buf = bytearray(buffersize)

        for i in range(len(buf)):
            #buf[i] = 3250 + int((4095-3400-300) * math.sin(2 * math.pi * i / len(buf)))
            buf = array('H', DC_offset + int(Amplitude * math.sin(2 * math.pi * i / buffersize)) for i in range(buffersize))
        dac.write_timed(buf, len(buf)//Period, mode=DAC.CIRCULAR)

        # Calculate delay between images
        capture_delay= int(Period/Num_per_wave*1000)
        print(capture_delay)

        imageCount = 0

        # Capture first image and use to generate mask
        img = sensor.snapshot()
        cpy= img.copy()
        cpy2= img.copy()
        cpy.gaussian(3, unsharp=True, threshold=False)
        cpy.laplacian(3, sharpen=True, threshold=True)
        cpy.invert()
        cpy.dilate(1, threshold=6)
        cpy.erode(1, threshold=7)
        cpy2.clear(cpy)
        th=cpy2.get_histogram().get_threshold()
        th_int= th.value()
        thresholdNG = [(0, th_int)]
        b=img.binary(thresholdNG,to_bitmap=True, copy=True)
        img.clear(b).to_grayscale
        img.save("%d.jpg"%(imageCount), quality = 80) # Store image under the name "0.jpg" #fix me! (idk what this is about)
        print("Capture Sucess")
        imageCount +=1

        # Delay and then perform the remaining captures
        time.sleep_ms(capture_delay)

        while imageCount < Num_per_wave:

            img = sensor.snapshot()     # capture image
            print("Capture Set")

            # Perform segmentation
            img.clear(b).to_grayscale

            img.save("%d.jpg"%(imageCount), quality = 80)  # Same comment as line above, not sure what its on about
            print("Capture Sucess")
            imageCount +=1

            # Delay
            time.sleep_ms(capture_delay)

    # When all images have been captured turn off DAC (LEDs)
    dac.write(0)
    dac.deinit()

    return

## ---------------------------------------------------- MSI --------------------------------------------------------------------------

def MSI:
    print("Capture Started - MSI")

    # Set output to maximum
    dac = DAC(2,bits=12)
    dac.write(2**12 - 1)

    # Select MSI mode on channel 2
    S_Mode = 0

    # Iterate through each channel, 0 to 15
    for i in range(0,15,1):

        # Configure select of 1:16 mux
        S_Zero = mux16[i][0]
        S_One = mux16[i][1]
        S_Two = mux16[i][2]
        S_Three = mux16[i][3]
        Enable = 1

        # Wait for LEDs to turn on
        time.sleep_ms(1000)

        # Capture image and save, segmentation not performed here currently
        img = sensor.snapshot()
        print("Image Captured")
        img.save("%d.jpg"%(imageCount), quality = 80)
        imageCount += 1

        Enable = 0

        time.sleep_ms(500)

    # Turn off LEDs and disable multiplexer
    dac.write(0)
    dac.deinit()

    S_Zero = 0
    S_One = 0
    S_Two = 0
    S_Three = 0
    Enable = 0

    return

## ---------------------------------------------------- MAIN LOOP --------------------------------------------------------------------

while(True):
    #print(button.value())
    if (button.value()== pressed or sleepFlag == True):              # button.value=1 when button pressed

        sleepFlag = False

        runNum += 1

        # Perform either SMFI or MSI depending on the value of mode, button run will perform SMFI currently
        if (mode == 0):
            SMFI()
        else if (mode == 1):
            MSI()

        # Send images
        for u in range(imageCount):

            img = image.Image("%d.jpg"%(u), copy_to_fb = True)

            x = img.size()
            print(x)
            count = 0
            segmentCount = 0;

            # Calculate number of segments required
            totalSegmentCount = math.floor(x/packetSize)+1
            print("totalSegmentCount")
            print(totalSegmentCount)

            for i in range (x):
                if count == 0:
                    # send packet header
                    uart.write('\r'.encode()) #packet start
                    uart.writechar(u+1) #image number
                    uart.writechar(segmentCount+1) # segment count
                    uart.writechar(totalSegmentCount) #total segment count
                    uart.writechar(Period) #current period
                    uart.writechar(runNum)
                    uart.writechar(img[i])
                    uart.writechar(mode)
                    time.sleep_ms(5)

                    # get crc
                    arr = []
                    summ = packetSize+i
                    if summ >= x:
                        summ = x
                    for j in range (i,summ):
                        arr.append(img[j])
                    crc = CRC32_Table(arr,len(arr))
                    print(hex(crc))

                elif count%128 == 0:

                    # send 128th byte and stop
                    uart.writechar(img[i])
                    print("Done Packet ",(segmentCount),"  ",(u))
                    time.sleep_ms(50) # pause a bit

                elif i == x-1 or count==packetSize-1:
                    print("done")

                    uart.writechar(img[i])

                    print("Done")
                    sendEndPacket()
                    # wait for next uart signal (notified by '\r')
                    count = -1
                    segmentCount +=1

                    while True:
                        if (uart.any()):
                            print("yes")
                            temp = uart.read(3)
                            if (temp == b'bes'):
                                print("correct")
                                time.sleep_ms(1000)
                                break
                            elif (temp==b'yes'):
                                print("correct Final")
                                time.sleep_ms(1000)
                                # only update if freq count is last
                                if (freqCount ==2 and segmentCount == totalSegmentCount):
                                    PeriodTable[0]= int.from_bytes(uart.read(1), 'big', False)
                                    PeriodTable[1]= int.from_bytes(uart.read(1), 'big', False)
                                    PeriodTable[2]= int.from_bytes(uart.read(1), 'big', False)
                                    #integer2 = int.from_bytes(byte2, byteorder='big', signed=False)
                                    #this doesn't work as micropython doesn't support keyword arguments
                                    #PeriodTable[1] = uart.read(1)
                                    #PeriodTable[2] = uart.read(1)
                                    for k in range(3):
                                        print(PeriodTable[k])
                                    Num_per_wave = int.from_bytes(uart.read(1), 'big', False)
                                    print(Num_per_wave)
                                    buffer = [None]*4
                                    ## MSI ---------------------------------------------------------------------------
                                    for k in range(4):
                                        buffer[k] = int.from_bytes(uart.read(1), 'big', False)
                                    # Recombine the bytes into a 32-bit integer
                                    timeDiff = (buffer[0] << 24) | (buffer[1] << 16) | (buffer[2] << 8) | buffer[3]

                                    print(timeDiff)  # Output: timeDIff
                                else:
                                    #dump the 4 bytes
                                    dump = int.from_bytes(uart.read(8), 'big', False)
                                break
                else:
                    uart.writechar(img[i])

                count +=1
                #end of for => done one byte

            # end of for done 1 image
            print("End of UART Transmission")
            print("ImageCount = " )
            print(u)
            print("segmentCount = ")
            print(segmentCount)
            '''
            #wait for uart signal
            while True:
                if (uart.any()):
                    print("yes")
                    if (uart.read()=="yes"):
                        print("yes")
                        break

            '''
            freqCount +=1
            print(freqCount)
        # Sleep for x and turn on sleep flag
        dac.write(0)
        dac.deinit()
        time.sleep_ms(timeDiff*1000)
        sleepFlag = True
