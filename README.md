# IMAGE-PROCESSING-USING-VERILOG-

> ** NOTE: **  This project is currently a work in Progress. The full core are completed but the report in my university has not Done. So that, I will update full source code on the next month ( 2/2026).

<img width="1078" height="562" alt="image" src="https://github.com/user-attachments/assets/68d1f4d8-8aad-4ec5-976e-74c9767c6f4a" />

* The right image, This is the noise image and in the left, it is image after proceesed

## Tools: 
* Vivado 
* Matlab 
## Block diagram 
<img width="1078" height="473" alt="image" src="https://github.com/user-attachments/assets/f45f6c96-784c-4870-8f8b-b133b69f6a90" />

## Ideal: 
- Fistly, convert JPG file to hex ( Matlab ). 
- Calcualte the median pixel.
- Convert hex file ( processed) into JPG file. 
## Features

* **Pipelined Architecture:** Processes one pixel per clock cycle.
* **3x3 Sliding Window:** Uses a Line Buffer to generate a 3x3 pixel in real-time.
* **Sorting Network:** Implements an optimized comparator network to find the median value of 9 pixels without complex sorting algorithms.
* **Resource Efficient:** Designed for FPGA implementation using minimal logic resources.
##  Project Structure

```text
.
├── rtl/
│   ├── median_filter_top.v    # Top-level module
│   ├── line_buffer.v          # Buffers 2 rows of pixels to create 3x3 window
│   ├── median_calc.v          # Finds the median of 9 input pixels
│   └── compare_swap.v         # Basic comparator unit (Swap min/max)
├── tb/
│   └── tb_median_filter.v     # Testbench for simulation
├── scripts/
│   ├── img_to_hex.m           # Matlab script to convert Input Image -> Hex
│   └── hex_to_img.m           # Matlab script to convert Output Hex -> Image
├── data/
│   ├── input_image.hex        # Noisy input data
│   └── output_image.hex       # Filtered output data
└── README.md
```
## The design consists of three main stages: 
* 1. Line buffer: Input pixels stream in real time. The line_buffer stores the previous two rows using internal RAM.
* 2. Window generation: Three register shift data at every clock cycle to form 3x3 moving window around the current pixel.
* 3. Median calculation: Instead of sortin all 9 pixels, the design use a network of compare_swap models: Stage 1: Sort each of the 3 rows independently,
Stage 2: Sort the columns of the resulting matrix (Min column, Median column, Max column), Stage 3: Compare specific diagonal elements to pinpoint the median value.
