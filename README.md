# CENG3430_Project-FPGA_Accelerated_Computer_Vision_on_Train_Active_Safety_System

This is an associated final project for CENG3430 - Rapid Prototyping of Digital Systems @ CUHK CSE.


## Team Members

- [@Jellyfish227](https://github.com/Jellyfish227): PL, DPU and PS-PL integration
- [@sennettcheng](https://github.com/sennettcheng): PS

## Project Requirements

### Host Machine Requirements

- CPU: >= 2GHz, >= 8 cores
- GPU: NVIDIA CUDA-enabled GPU only. Having one is strongly recommended, not sure what grade is required, but I just used my old GTX 1660Ti and it seems fine. Model quantization and optimization of Vitis AI could be GPU-accelerated. They also mentioned that you should use GPU-acceleration as long as you have one. 
- RAM: >= 8GB (I used 16GB, and I feel like 16GB is bare minimum to run faster)
- Storage: >= 800GB (Actually I don't know how many GB have I used just to download all the softwares and libraries, but they are just fuxxing huge. You know, It's Xilinx practice, HAHA. So for safety, I recommend >= 1TB)


### Host OS Requirements

- Ubuntu 20.04 or later (I suggest using the latest LTS version, most of the time it can promise to be supported)
- Windows is less recommended as I found that most of the tools work better or even only work on Linux. 
- Please try to make sure that you can physically access the host machine as it is so troublesome to setup remote hardware connection for writing bitstream to the board.
- Note from @Jellyfish227: I used Windows 11, hosting VM with Ubuntu 24.04 LTS. I do so just because my remote desktop client does not support hosting on Linux, so I host the remote RD on Windows so I can RD to the PC with my Mac, but it's not a good idea as the performance is lowkey shxt. If you don't have strong reason to use Windows, I suggest you just use Linux host system.

### Software Requirements

- Vivado 2024.2 or later (newer version is recommended for supporting the evaluation kit used in the project - ZCU102 / ZCU104)
- Vitis 2024.2 or later
- Vitis AI 3.0 or later
    - Docker
    - If using GPU-acceleration, you will need:
        - CUDA Toolkit
        - NVIDIA Driver
        - NVIDIA Container Toolkit
- Petalinux 2024.2 or later (Petalinux 2024.2 requires)
    - It requires /bin/sh to be linked to /bin/bash, so you need to do the following:
        ```bash
        sudo ln -fs /bin/bash /bin/sh
        ```


### Evaluation Kit Requirements

- ZCU102 / ZCU104
- Or any other Zynq UltraScale+ MPSoC FPGA evaluation kit as long as you can declare your custom platform into an .xsa to let Vitis to be recognized
- ZCU102 / ZCU104 is recommended as the they are native boards from AMD Xilinx, so the supports and guidlines are more complete.

## Project setup procedure

1. Install Ubuntu OS on the host machine : Done on 2025-05-07
2. Install Vivado and Vitis : Done on 2025-05-07
3. Install Petalinux : Done on 2025-05-08 01:32:38
4. Install Docker, CUDA Toolkit, NVIDIA Driver, NVIDIA Container Toolkit : Done on 2025-05-08 01:32:38
5. Install Vitis AI : Done on 2025-05-08 01:18:48
6. Build Docker Container from Xilinx Recipe : Done on 2025-05-08 01:44:05
7. Vitis AI GPU-enabled test : Done on 2025-05-08 01:50:20
8. Vitis AI up and running : Done on 2025-05-08 01:50:20
    - Note: to run Vitis AI, execute the following command:
        ```bash
        docker images # check the vitis ai image repo and tag
        # In my case, it is xilinx/vitis-ai-pytorch-gpu:3.5.0.001-1eed93cde
        cd <Vitis AI dir>
        ./docker_run.sh vitis-ai-<image-repo>:<image-tag>
        ```
9. Setup reference design in Vivado workflow system : Done on 2025-05-09 15:57:13
10. TRD Synthesis : Done on 2025-05-09 16:22:01
11. TRD Implementation : Done on 2025-05-09 17:52:09
12. Generate TRD bitstream : Done on 2025-05-09 17:57:31
