# Image-Pre-processing-using-FPGA
Implementation of Median Filter on FPGA


Real-time image processing is difficult to achieve on a serial processor. This is due to several factors such as the large data set represented by the image, and the complex operations which may need to be performed on the image. At real-time video rates of 25 frames per second a single operation performed on every pixel of a 768 by 576 color image (PAL frame) equates to 33 million operations per second. This does not take into account the overhead of storing and retrieving pixel values. Many image processing applications require that several operations be performed on each pixel in the image resulting in an even large number of operations per second.
One alternative is to use a field programmable gate array (FPGA). Continual growth in the size and functionality of FPGAs over recent years has resulted in an increasing interest in their use as implementation platforms for image processing applications, particularly real-time video processing.
Digital image processing is an ever expanding and dynamic area with applications     reaching out into our everyday life. These applications involve different processes like image enhancement and object detection. Implementing such applications on a general purpose computer is not very time efficient due to additional constraints on memory and other peripheral devices.
Application specific hardware implementation offers much greater speed than a software implementation. With advances in the VLSI (Very Large Scale Integration) technology hardware implementation has become an attractive alternative. Field Programmable Gate Arrays are reconfigurable devices. Hardware design techniques such as parallelism and pipelining techniques can be developed on a FPGA. Implementing image processing algorithms on reconfigurable hardware minimizes the time-to-market cost, enables rapid prototyping of complex algorithms and simplifies debugging and verification.

Spatial Domain Filtering:
Spatial domain filtering is one of the most widely used image enhancement approaches. The approaches in this category are based on direct manipulation of pixels in an image. The process consists simply of moving the filter mask from point to point in an image. At each point (x, y) the response of filter at that point is calculated using predefined relationship. The operation performed for the majority of the filtering operations (linear filtering) always remains the same i.e. convolution. The masks (or kernel) change according to the type of filtering required. For other non-linear filters, some arithmetic relationship decides the final pixel value to be assigned. Here, only the mask-size plays a more important role rather than the mask itself.
The spatial domain filters are fundamentally classified on the basis of their basic effect on the image viz. sharpening or smoothing.

Classification of Spatial Domain Filters
 
(1) Median filtering 
(2) Average Filtering.

1) Median Filtering:
A median filter is a non-linear digital filter which is able to preserve sharp signal changes and is very effective in removing impulse noise (or salt and pepper noise). An impulse noise has a gray level with higher or lower value that is different from the neighborhood point. 
	Linear filters don’t have ability to remove this type of noise without affecting the distinguishing characteristics of the signal. Median filters have remarkable advantages over linear filters for this particular type of noise. Therefore median filter is very widely used in digital signal and image/video processing applications. 
	A standard median operation is implemented by sliding a window of odd size (e.g.3x3 window) over an image. At each window position, the sampled values of signal or image are sorted, and the median value of the samples replaces the sample in the center of the window
