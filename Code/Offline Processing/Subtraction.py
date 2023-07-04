#Import libraries
import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#Define subfolder path for RESPONSE
image_folder = r'C:\Users\samry\Downloads\Cultivar_assessment_SMFI\SMFI_stack__node_2_period_10_20230623_1620'
response_path = os.path.join(image_folder, 'false_coloured_stack')

#Define subfolder path for REFERENCE
reference_path = r'D:\Uni Work\Internship\Code\GitHub Repo\Talking-to-Plants-Summer-Work\Code\Offline Processing'

#Get data from fluorescence response plot
data_plot_path = os.path.join(response_path, f"fluorescence_response_data.csv")
response = np.genfromtxt(data_plot_path, delimiter='\n')

#Get reference data
data_plot_path = os.path.join(reference_path, f"reference.csv")
reference = np.genfromtxt(data_plot_path, delimiter='\n')

#Normalise data to reference
scaling_factor = np.amax(reference)
response = response * scaling_factor

#Find difference
output = reference - response

size = output.size
x = np.arange(len(output))

#Plot graph
plt.figure()    
graph = pd.DataFrame()
graph['samples'] = x
graph['difference'] = output
ax = plt.gca();
graph.plot(ax=ax,x='samples',y='difference',color='blue',kind='line',label='Difference of Normalised data',legend=True);
ax.set_title('')
ax.set_xlabel("Sample number"); ax.set_ylabel("Difference")
ax.grid('on');
f_plot_name=f"difference_of_normalised_data.jpg"

#Save data and plot in downloads
np.savetxt("difference_data.csv",output,fmt='%f',delimiter='/n')
plt.savefig(f_plot_name);

#Future FFT (?)
"""
fft_result = np.fft.fft(array)

sampling_rate = 1
freq_axis = np.fft.fftfreq(len(array), d=1/sampling_rate)

plt.plot(freq_axis, np.abs(fft_result))

plt.xlabel('Frequency')
plt.ylabel('Amplitude')
"""