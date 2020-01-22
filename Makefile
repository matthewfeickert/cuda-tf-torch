default: image

all: image

image:
	docker build . \
	-f Dockerfile \
	--cache-from matthewfeickert/cuda-tf-torch:latest \
	--tag matthewfeickert/cuda-tf-torch:cuda10.1-cudnn7-runtime-ubuntu18.04 \
	--tag matthewfeickert/cuda-tf-torch:latest

cuda-10.1:
	docker build . \
	-f Dockerfile \
	--cache-from matthewfeickert/cuda-tf-torch:cuda10.1-cudnn7-runtime-ubuntu18.04 \
	--tag matthewfeickert/cuda-tf-torch:cuda10.1-cudnn7-runtime-ubuntu18.04

run:
	docker run --rm -it --gpus all matthewfeickert/cuda-tf-torch:latest
