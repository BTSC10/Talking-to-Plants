#Import libraries
import os
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt

#Define subfolder path for RESPONSE
image_folder = r'D:\Uni Work\Internship\Code\GitHub Repo\Talking-to-Plants-Summer-Work\Code\Offline Processing\Cultivar_assessment_SMFI\SMFI_stack__node_2_period_10_10072023_1647'
response_path = os.path.join(image_folder, 'false_coloured_stack')

#Define subfolder path for REFERENCE
reference_path = r'D:\plantdata\Reference'

#Get data from fluorescence response plot
data_plot_path = os.path.join(response_path, f"fluorescence_response_data.csv")
response = np.genfromtxt(data_plot_path, delimiter='\n')

#Get reference data
data_plot_path = os.path.join(reference_path, f"reference.csv")
reference = np.genfromtxt(data_plot_path, delimiter='\n')
reference = np.flip(reference)

#Normalise data to reference
# reference = reference[:-1]
reference = reference - np.average(reference)
response = response - np.average(response)
scaling_factor = np.amax(reference) / np.amax(response)
response = response * scaling_factor

#Find difference
output = reference - response

size = output.size
x = np.arange(len(output))

plt.figure()    
graph = pd.DataFrame()
graph['samples'] = x
graph['difference'] = response
ax = plt.gca();
graph.plot(ax=ax,x='samples',y='difference',color='blue',kind='line',label='Response',legend=True);
ax.set_title('')
ax.set_xlabel("Sample number"); ax.set_ylabel("Difference")
ax.grid('on');

plt.figure()    
graph = pd.DataFrame()
graph['samples'] = x
graph['difference'] = reference
ax = plt.gca();
graph.plot(ax=ax,x='samples',y='difference',color='blue',kind='line',label='Reference',legend=True);
ax.set_title('')
ax.set_xlabel("Sample number"); ax.set_ylabel("Difference")
ax.grid('on');

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