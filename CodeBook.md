#PROJECT DESCRIPTION:
This tidy data set was created to complete the course project for the “Gathering and Cleaning Data” class for the John Hopkin’s Data Science Coursera Signature Track. The goal was to create a tidy data set of the averages of the mean and standard deviations of accelerometer data provided by the University of California Irving. 

#DATA SOURCE:
The raw data from this was gathered from experiments carried out by University of California Irving with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (walking, walking upstairs, walking down stairs, sitting, standing, and laying down) wearing a Samsung Galaxy S II on the waist. This phone had an embedded accelerometer and gyroscope which was used to capture  3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz.. The obtained dataset was randomly partitioned into two sets, where 70% of the volunteers were selected for generating the training data and 30% the test data. 
Based on the README file included describing the experiment, the sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, was separated using a Butterworth low-pass filter into body and gravitational motion components. This changed the numeric label in the original file with the activity description it corresponded too.. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

#RAW DATA FORMAT
The data was originally stored in a group of tab delaminated text files. The data was separated into two folders containing data from the “test” and “train” groups. These in turn were divided into three text files, X_(test or train), y_(test or train), and subject_(test or train). The subject file contained the numeric code corresponding to the subject being tested, the X files contained all the data measured and calculated from the tests, and the y file had numeric code indicating which activity the subject was performing. All the measurements are normalized and bounded within [1,-1].
Information regarding the measurements was provided by features_info.txt, while features.txt provided a list of all features. The file activity_labels.txt explained which numbers in the y files corresponded to which activity. 

#TIDY DATA FORMAT
The tidy data is organized by subject and activity in the first two columns. The columns past the first two are the averages of the mean or standard deviations of the measurements provided in the raw data for that specific subject and activity. The Specific descriptions of the variables in the tidy data are provided below. 

#VARIABLES IN THE TIDY DATA SET

#####1.	Subject
The numeric designation assigned to the subject. There were 30 subjects total so this value ranges from 1 to 30. 
#####2.	Activity
The activity the subject was performing when the data was obtained. There are 6 possible activities, Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, and Laying Down. 
#####3.	Body Accelerometer Time Domain Mean X-axis 
This is the average value of the means of the X-axis component of the body acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
It is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
#####4.	Body Accelerometer Time Domain Mean Y-axis 
This is the average value of the means of the Y-axis component of the body acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g).
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
#####5.	Body Accelerometer Time Domain Mean Z-axis 
This is the average value of the means of the Z-axis component of the body acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
#####6.	Gravity Accelerometer Time Domain Mean X-axis 
This is the average value of the means of the X-axis component of the gravity acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
#####7.	Gravity Accelerometer Time Domain Mean Y-axis 
This is the average value of the means of the Y-axis component of the gravity acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
#####8.	Gravity Accelerometer Time Domain Mean Z-axis 
This is the average value of the means of the Z-axis component of the gravity acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
#####9.	Body Accelerometer Time Domain Jerk Signal Mean X-axis 
This variable is the average value of the means of the X-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per sec (g/sec).
#####10.	Body Accelerometer Time Domain Jerk Signal Mean Y-axis 
This variable is the average value of the means of the Y-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per sec (g/sec).
#####11.	Body Accelerometer Time Domain Jerk Signal Mean Z-axis
This variable is the average value of the means of the Z-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer.
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
#####12.	Body Gyroscope Time Domain Mean X-axis 
This is the average value of the means of the X-axis component of the body angular velocity calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
#####13.	Body Gyroscope Time Domain Mean Y-axis 
This is the average value of the means of the Y-axis component of the body angular velocity calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
#####14.	Body Gyroscope Time Domain Mean Z-axis 
This is the average value of the means of the Z-axis component of the body angular velocity calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
#####15.	Body Gyroscope Time Domain Jerk Signal Mean X-axis 
This variable is the average value of the means of the X-axis component of the Jerk Signal derived with respect to time from the body angular velocity as measured by the gyroscope. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.
#####16.	Body Gyroscope Time Domain Jerk Signal Mean Y-axis 
This variable is the average value of the means of the Y-axis component of the Jerk Signal derived with respect to time from the body angular velocity as measured by the gyroscope. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.
#####17.	Body Gyroscope Time Domain Jerk Signal Mean Z-axis 
This variable is the average value of the means of the Z-axis component of the Jerk Signal derived with respect to time from the body angular velocity as measured by the gyroscope. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.
#####18.	Body Accelerometer Time Domain Magnitude Mean  
This is the average value of the means of the magnitude of the three-dimensional body acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The magnitude was calculated by the Euclidean norm. 
#####19.	Gravity Accelerometer Time Domain Magnitude Mean 
This is the average value of the means of the magnitude of the three-dimensional gravity acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The magnitude was calculated by the Euclidean norm. 
#####20.	Body Accelerometer Time Domain Jerk Signal Magnitude Mean 
This variable is the average value of the means of the magnitude of the three-dimensional Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. The magnitude was calculated by the Euclidean norm.
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
#####21.	Body Gyroscope Time Domain Magnitude Mean  
This is the average value of the means of the magnitude of the three-dimensional body acceleration signal calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The magnitude was calculated by the Euclidean norm.
#####22. Body Gyroscope Time Domain Jerk Signal Magnitude Mean 
This variable is the average value of the means of the magnitude of the three-dimensional Jerk Signal derived with respect to time from the body angular velocity as measured by the gyroscope. The magnitude was calculated by the Euclidean norm.
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.
#####23. Body Accelerometer FFT Mean X-axis 
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the X-axis component of the body acceleration signal calculated from the original accelerometer raw data.  
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
####24.	Body Accelerometer FFT Mean Y-axis 
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the Y-axis component of the body acceleration signal calculated from the original accelerometer raw data.  
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
####25.	Body Accelerometer FFT Mean Z-axis 
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the Z-axis component of the body acceleration signal calculated from the original accelerometer raw data.  
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
####26.	Body Accelerometer FFT Jerk Signal Mean X-axis 
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the X-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####27.	Body Accelerometer FFT Jerk Signal Mean Y-axis 
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the Y-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####28.	Body Accelerometer FFT Jerk Signal Mean Z-axis 
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the Z-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####29.	Body Gyroscope FFT Mean X-axis 
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the X-axis of the magnitude of the body angular velocity calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.
####30.	Body Gyroscope FFT Mean Y-axis 
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the Y-axis of the body angular velocity calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
####31.	Body Gyroscope FFT Mean Z-axis 
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the Z-axis of the body angular velocity calculated from the original gyroscope raw data. This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
####32.	Body Accelerometer FFT Magnitude Mean	
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the magnitude of the three-dimensional body acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
####33.	Body Accelerometer FFT Jerk Signal Magnitude Mean
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the magnitude of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####34.	Body Gyroscope FFT Magnitude Mean
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the magnitude of the three-dimensional body angular velocity calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
####35.	Body Gyroscope FFT Jerk Signal Magnitude Mean
This variable is the average value of the means of the fast Fourier transform (FFT) applied to the magnitude of the Jerk Signal derived with respect to time from the body angular velocity as measured by the gyroscope. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.
####36.	Body Accelerometer Time Domain Standard Deviation X-axis 
This is the average value of the standard deviation of the X-axis component of the body acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
It is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.
####37.	Body Accelerometer Time Domain Standard Deviation Y-axis 
This is the average value of the standard deviation of the Y-axis component of the body acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
It is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.
####38.	Body Accelerometer Time Domain Standard Deviation Z-axis 
This is the average value of the standard deviation of the Z-axis component of the body acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
It is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.
####39.	Gravity Accelerometer Time Domain Standard Deviation X-axis
This is the average value of the standard deviation of the X-axis component of the gravity acceleration signal calculated from the original accelerometer raw data.
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
It is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.
####40.	Gravity Accelerometer Time Domain Standard Deviation Y-axis 
This is the average value of the standard deviation of the Y-axis component of the gravity acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
It is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.
####41.	Gravity Accelerometer Time Domain Standard Deviation Z-axis 
This is the average value of the standard deviation of the Z-axis component of the gravity acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
It is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz.
####42.	Body Accelerometer Time Domain Jerk Signal Standard Deviation X-axis 
This variable is the average value of the standard deviation of the X-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####43.	Body Accelerometer Time Domain Jerk Signal Standard Deviation Y-axis 
This variable is the average value of the standard deviation of the Y-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####44.	Body Accelerometer Time Domain Jerk Signal Standard Deviation Z-axis 
This variable is the average value of the standard deviation of the Z-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####45.	Body Gyroscope Time Domain Standard Deviation X-axis 
This is the average value of the standard deviation of the X-axis component of the body angular velocity calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
####46.	Body Gyroscope Time Domain Standard Deviation Y-axis 
This is the average value of the standard deviation of the Y-axis component of the body angular velocity calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
####47.	Body Gyroscope Time Domain Standard Deviation Z-axis 
This is the average value of the standard deviation of the Z-axis component of the body angular velocity calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. 
####48.	Body Gyroscope Time Domain Jerk Signal Standard Deviation X-axis 
This variable is the average value of the standard deviation of the X-axis component of the Jerk Signal derived with respect to time from the body angular velocity as measured by the gyroscope. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.
####49.	Body Gyroscope Time Domain Jerk Signal Standard Deviation Y-axis 
This variable is the average value of the means of the Y-axis component of the Jerk Signal derived with respect to time from the body angular velocity as measured by the gyroscope. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.
####50.	Body Gyroscope Time Domain Jerk Signal Standard Deviation Z-axis 
This variable is the average value of the means of the Z-axis component of the Jerk Signal derived with respect to time from the body angular velocity as measured by the gyroscope. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.
####51.	Body Accelerometer Time Domain Magnitude Standard Deviation  
This is the average value of the standard deviation of the magnitude of the three-dimensional body acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The magnitude was calculated by the Euclidean norm. 
####52.	Gravity Accelerometer Time Domain Magnitude Standard Deviation 
This is the average value of the standard deviation of the magnitude of the three-dimensional gravity acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The magnitude was calculated by the Euclidean norm. 
####53.	Body Accelerometer Time Domain Jerk Signal Magnitude Standard Deviation  
This variable is the average value of the standard deviation of the magnitude of the three-dimensional Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. The magnitude was calculated by the Euclidean norm.
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####54.	Body Gyroscope Time Domain Magnitude Standard Deviation  
This is the average value of the standard deviation of the magnitude of the three-dimensional body acceleration signal calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
This is a time domain signal that was captured at a constant rate of 50 Hz, filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. It was separated into body and gravity signals using a low pass Butterworth filter with a corner frequency of 0.3 Hz. The magnitude was calculated by the Euclidean norm.
####55.	Body Gyroscope Time Domain Jerk Signal Magnitude Standard Deviation  
This variable is the average value of the standard deviation of the magnitude of the three-dimensional Jerk Signal derived with respect to time from the body angular velocity as measured by the gyroscope. The magnitude was calculated by the Euclidean norm.
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.
####56.	Body Accelerometer FFT Standard Deviation X-axis 
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the X-axis component of the body acceleration signal calculated from the original accelerometer raw data.  
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
####57.	Body Accelerometer FFT Standard Deviation Y-axis 
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the Y-axis component of the body acceleration signal calculated from the original accelerometer raw data.  
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
####58.	Body Accelerometer FFT Standard Deviation Z-axis 
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the Z-axis component of the body acceleration signal calculated from the original accelerometer raw data.  
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
####59.	Body Accelerometer FFT Jerk Signal Standard Deviation X-axis 
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the X-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####60.	Body Accelerometer FFT Jerk Signal Standard Deviation Y-axis 
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the Y-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####61.	Body Accelerometer FFT Jerk Signal Standard Deviation Z-axis 
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the Z-axis component of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second (g/sec).
####62.	Body Gyroscope FFT Standard Deviation X-axis 
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the X-axis component of the body angular velocity calculated from the original gyroscope raw data.
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
####63.	Body Gyroscope FFT Standard Deviation Y-axis 
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the Y-axis component of the body angular velocity calculated from the original gyroscope raw data.
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
####64.	Body Gyroscope FFT Standard Deviation Z-axis 
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the Z-axis component of the body angular velocity calculated from the original gyroscope raw data.
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
####65.	Body Accelerometer FFT Magnitude Standard Deviation  
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the magnitude of the three-dimensional body acceleration signal calculated from the original accelerometer raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g). 
####66.	Body Accelerometer FFT Jerk Signal Magnitude Standard Deviation 
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the magnitude of the Jerk Signal derived with respect to time from the body linear acceleration as measured by the accelerometer. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in standard gravity units (g) per second. (g/sec).
####67.	Body Gyroscope FFT Magnitude Standard Deviation
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the magnitude of the three-dimensional body angular velocity calculated from the original gyroscope raw data. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second.
####68.	Body Gyroscope FFT Jerk Signal Magnitude Standard Deviation
This variable is the average value of the standard deviation of the fast Fourier transform (FFT) applied to the magnitude of the Jerk Signal derived with respect to time from the body angular velocity as measured by the gyroscope. 
This measurement is normalized and bounded within [1,-1]. The units of this measurement are in radians per second per second.

