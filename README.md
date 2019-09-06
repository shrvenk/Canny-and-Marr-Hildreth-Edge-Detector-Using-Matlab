# Canny-and-Marr-Hildreth-Edge-Detector-Using-Matlab
Detection of a Edge in the image using Canny's and Marr Hildreth's Edge Detection Method

# 1. Canny Edge Detector
   - Original Image :
   
        ![image](https://github.com/shrvenk/Canny-and-Marr-Hildreth-Edge-Detector-Using-Matlab/blob/master/demo.jpg)

   - Take Derivative of Gaussian Kernel with respect to x and y direction. Take Convolution of kernels with original gray scale image.
       find magnitude and direction of the gradient. 

       Magnitude :
         
        ![image](https://github.com/shrvenk/Canny-and-Marr-Hildreth-Edge-Detector-Using-Matlab/blob/master/mag.jpg)
        
   - Non-Maximum Suppression :
   
        ![image](https://github.com/shrvenk/Canny-and-Marr-Hildreth-Edge-Detector-Using-Matlab/blob/master/temp.jpg)
        
   - Hysteresis Thresholding using Grass Fire Algorithm :
    
        ![image](https://github.com/shrvenk/Canny-and-Marr-Hildreth-Edge-Detector-Using-Matlab/blob/master/result.jpg)
        
        
# 2. Marr Hildreth Detector
   - Using Laplacian of Gaussian kernel i.e. Second derivative of gaussian. Take convolution of Laplacian of Gaussian kernel with Grayscale 
     Image and check the zero crossing and apply the threshold value.
     
   - result
     
        ![image](https://github.com/shrvenk/Canny-and-Marr-Hildreth-Edge-Detector-Using-Matlab/blob/master/result2.jpg)
