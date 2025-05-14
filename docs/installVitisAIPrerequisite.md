# Instructions to install Vitis AI prerequisites

[back to TRD](./TRD_Group15.md)

## Install Docker
link reference:
1. https://docs.docker.com/engine/install/ubuntu/
2. https://docs.docker.com/desktop/setup/install/linux/
3. https://docs.docker.com/desktop/setup/sign-in/#credentials-management-for-linux-users
4. https://docs.docker.com/desktop/setup/install/linux/ubuntu/

### Steps:
1. Remove conflicting unofficial Docker packages:
    ```bash
    for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done
    ```
2. Initialize pass:
    ```bash
    gpg --generate-key
    pass init <your_generated_gpg-id_public_key>
    ```
3. Setup Docker's apt repository:
    ```bash
    # Add Docker's official GPG key:
    sudo apt-get update
    sudo apt-get install ca-certificates curl
    sudo install -m 0755 -d /etc/apt/keyrings
    sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
    sudo chmod a+r /etc/apt/keyrings/docker.asc

    # Add the repository to Apt sources:
    echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "${UBUNTU_CODENAME:-$VERSION_CODENAME}") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
    sudo apt-get update
    ```
4. Install Docker Engine, containerd, and Docker Compose:
    ```bash
    sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
    ```
5. Verify Docker Engine installation:
    ```bash
    sudo docker run hello-world
    ```
6. Add non-root user to the docker group:
    ```bash
    sudo usermod -aG docker $USER
    ```
7. Log out and log back in to apply the new group membership. or run:
    ```bash
    newgrp docker
    ```
8. Verify non-root user can run docker:
    ```bash
    # no sudo required
    docker run hello-world
    ```
Congratulations! You have successfully configured Docker.

## Install CUDA Toolkit
skip

## Install NVIDIA Container Toolkit
### link reference:
https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html

### Steps:
1. Configure the production repository
    ```bash
    curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
    && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
        sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
        sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
    ```
2. Update package list
    ```bash
    sudo apt-get update
    ```
3. Install NVIDIA Container Toolkit packages
    ```bash
    sudo apt-get install -y nvidia-container-toolkit
    ```
4. Configure container runtime
    ```bash
    sudo nvidia-ctk runtime configure --runtime=docker
    ```
5. Restart docker daemon
    ```bash
    sudo systemctl restart docker
    ```


## Install NVIDIA Container Toolkit

[back to TRD](./TRD_Group15.md)