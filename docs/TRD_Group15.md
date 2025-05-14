# Targeted reference design for Group 15

## Introduction

## Design procedure
1. Use Linux. Pls, just use Linux. 
2. Install basic packages
    ```bash 
    sudo apt-get install -y gcc git make net-tools libncurses5-dev tftpd-hpa zlib1g-dev libssl-dev flex bison libselinux1 gnupg wget diffstat chrpath socat xterm autoconf libtool tar unzip texinfo zlib1g-dev gcc-multilib build-essential libsdl1.2-dev libglib2.0-dev screen pax gzip gawk
    ```
3. Install Vivado and Vitis. It is easy bro. 
4. Install Petalinux. It is also easy bro, tho there maybe some configuration needed, check out [instructions to install PetaLinux] (./installPetaLinux.md)
5. Install Docker, CUDA Toolkit, NVIDIA Driver, NVIDIA Container Toolkit. Check out [instructions to install Vitis AI prerequisites](./installVitisAIPrerequisite.md) for more details. 
6. Install Vitis AI. Check out [instructions to install Vitis AI](./installVitisAI.md) for more details. 
7. Build Docker Container from Xilinx Recipe. Check out [instructions to build Docker Container from Xilinx Recipe](./buildDockerContainerFromXilinxRecipe.md) for more details. 
8. Vitis AI GPU-enabled test. Check out [instructions to test Vitis AI GPU-enabled](./testVitisAIGPUEnabled.md) for more details. 
9. Vitis AI up and running. Check out [instructions to run Vitis AI](./runVitisAI.md) for more details. 
