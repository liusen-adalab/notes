来源：https://github.com/filecoin-project/lotus/discussions/7443

1. Install Nvidia Driver
1.1. Remove any existing Nvidia drivers
sudo apt-get purge nvidia*

1.2. Add Graphic Drivers PPA
sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt-get update

1.3. Search available drivers
ubuntu-drivers devices

1.4. Install the 460 Nvidia - known good Lotus version
sudo apt-get install nvidia-driver-460

1.5. Reboot your server after 460 driver installation.

2. Install Cuda 11.2
2.1. Verify that the driver is successfully running
nvidia-smi

2.2 Install CUDA 11.2 Toolkit
wget https://developer.download.nvidia.com/compute/cuda/11.2.2/local_installers/cuda_11.2.2_460.32.03_linux.run
sudo sh cuda_11.2.2_460.32.03_linux.run

2.3 UNCHECK the option of installing the driver!!!

2.4 Add the new Cuda paths to your /.bashrc or /etc/environment file.
```
PATH=$PATH:/usr/local/cuda-11.2/bin
LD_LIBRARY_PATH=/usr/local/cuda-11.2/lib64
CUDA_HOME=/usr/local/cuda
```
2.5 Verify Cuda 11.2 installation
nvcc --version