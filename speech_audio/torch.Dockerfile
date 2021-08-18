FROM pytorch/pytorch:1.9.0-cuda10.2-cudnn7-devel
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /sre
COPY . /sre/
RUN apt update
RUN apt install -y libopencv-dev python3-opencv ffmpeg libsndfile1 libsndfile-dev wget git tmux
RUN pip3 install -r reqs.txt
