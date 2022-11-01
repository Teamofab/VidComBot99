FROM debian:latest

RUN apt update && apt upgrade -y
RUN apt install git curl python3-pip ffmpeg -y
RUN pip3 install -U pip 
RUN cd / 
RUN git clone https://github.com/Teamofab/VidComBot99
RUN cd VidComBot99
WORKDIR /VidComBot99
RUN pip3 install -U -r requirements.txt
CMD python3 -m bot
