FROM tensorflow/tensorflow:2.2.3-gpu-py3-jupyter
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /sre
COPY . /sre/
RUN apt update 
RUN apt install -y libopencv-dev python3-opencv ffmpeg libsndfile1 wget libsndfile-dev tmux
RUN pip3 install -r reqs.txt
