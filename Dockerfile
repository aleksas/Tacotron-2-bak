FROM continuumio/anaconda3:2018.12
FROM tensorflow/tensorflow:1.10.1-gpu-py3

RUN apt-key del 7fa2af80
RUN apt-key adv --fetch-keys http://developer.download.nvidia.com/compute/cuda/repos/ubuntu1604/x86_64/3bf863cc.pub

RUN apt-get update
RUN apt-get install -y libasound-dev portaudio19-dev libportaudio2 libportaudiocpp0 ffmpeg libav-tools wget git vim libffi-dev

#RUN wget http://launchpadlibrarian.net/339874908/libav-tools_3.3.4-2_all.deb
#RUN dpkg -i libav-tools_3.3.4-2_all.deb

RUN wget http://data.keithito.com/data/speech/LJSpeech-1.1.tar.bz2
RUN tar -jxvf LJSpeech-1.1.tar.bz2

COPY . /root/Tacotron-2

WORKDIR /root/Tacotron-2
RUN ln -s /notebooks/LJSpeech-1.1 LJSpeech-1.1
RUN pip3 install --upgrade pip
RUN pip3 install tensorflow==1.10 llvmlite==0.31.0
RUN pip3 install -r ./requirements.txt
