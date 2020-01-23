# CUDA TensorFlow and PyTorch Docker image

An Ubuntu 18.04 [NVIDIA Docker](https://github.com/NVIDIA/nvidia-docker) image with CUDA 10.1 and CuDNN 7 with TensorFlow and PyTorch

[![Docker Pulls](https://img.shields.io/docker/pulls/matthewfeickert/cuda-tf-torch.svg)](https://hub.docker.com/r/matthewfeickert/cuda-tf-torch/)
[![download-size number-of-layers](https://images.microbadger.com/badges/image/matthewfeickert/cuda-tf-torch.svg)](https://microbadger.com/images/matthewfeickert/cuda-tf-torch)

Contains:
- [TensorFlow `v2.1.0`](https://github.com/tensorflow/tensorflow/releases/tag/v2.1.0)
- [PyTorch `v1.4.0`](https://github.com/pytorch/pytorch/releases/tag/v1.4.0)

## Installation

- Make sure that you have the [`nvidia-container-toolkit`](https://github.com/NVIDIA/nvidia-docker#ubuntu-16041804-debian-jessiestretchbuster) installed on the host machine.
- Check the [list of available tags on Docker Hub](https://hub.docker.com/r/matthewfeickert/cuda-tf-torch/tags?page=1) to find the tag you want.
- Use `docker pull` to pull down the image corresponding to the tag. For example:

```
docker pull matthewfeickert/cuda-tf-torch:cuda10.1-cudnn7-runtime-ubuntu18.04
```

## Use

To check that NVIDIA GPUS are being properly detected run

```
docker run --rm --gpus all matthewfeickert/cuda-tf-torch:cuda10.1-cudnn7-runtime-ubuntu18.04 nvidia-smi
```

and check if the [`nvidia-smi`](https://developer.nvidia.com/nvidia-system-management-interface) output appears correctly.

To run (interactively) using GPUs on the host machine:

```
docker run --rm -it --gpus all matthewfeickert/cuda-tf-torch:cuda10.1-cudnn7-runtime-ubuntu18.04
```
