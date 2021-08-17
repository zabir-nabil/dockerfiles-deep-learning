FROM pytorch/pytorch:1.9.0-cuda10.2-cudnn7-devel
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /kaggle
COPY . /kaggle/
RUN apt update
RUN apt install -y libopencv-dev python3-opencv ffmpeg wget git tmux
ENV KAGGLE_USERNAME=furcifer
ENV KAGGLE_KEY=YOUR_KEY
RUN pip3 install -r reqs.txt
