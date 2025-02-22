# FPGA_ImageAccel
This project implements convolutional image processing on an FPGA. It aims to accelerate image processing tasks by leveraging parallel computation capabilities of FPGAs. The design focuses on efficient filtering and edge detection using convolutional kernels.

## Features
Real-time image processing on FPGA
Implementation of various convolutional filters (e.g., edge detection, sharpening, blurring)
Optimized hardware design for low latency and high throughput
Uses Verilog for hardware description
Can be extended to support more image processing operations

## Components Used
# Hardware
FPGA Board: 
Camera Module (if applicable)
External Memory (if applicable)
# Software
HDL Language: Verilog
Development Environment: Quartus/Vivado (Specify which one)
Simulation Tools: ModelSim/Other
Programming Interface: JTAG/USB/UART

## Prerequisites
Ensure you have the following installed:
FPGA development tools (Quartus/Vivado)
Verilog simulation tools (ModelSim, etc.)
Required hardware components connected and configured

## Setup Instructions
Clone the repository:
git clone https://github.com/KartikB3/FPGA_ImageAccel.git
Open the project in your FPGA development environment.
Compile and synthesize the Verilog code.
Load the bitstream onto the FPGA.
Run tests using sample images.

## Usage
Modify kernel values in the Verilog code to experiment with different convolutional effects.
Connect a camera module for real-time image processing.
Extend the design to support multi-channel image processing.

## Future Improvements
Implement hardware acceleration for more complex image processing algorithms.
Optimize resource utilization for better performance.
Support more image formats and resolutions.
