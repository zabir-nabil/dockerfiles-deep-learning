FROM tensorflow/tensorflow:2.2.3-gpu-py3-jupyter
ARG DEBIAN_FRONTEND=noninteractive
WORKDIR /sre
COPY . /sre/
RUN apt update
RUN apt install -y libopencv-dev python3-opencv
RUN apt install -y ffmpeg
RUN apt-get install -y libsndfile1
RUN apt install -y wget
RUN apt-get install -y libsndfile-dev
RUN apt install -y tmux
RUN pip3 install -r reqs.txt
