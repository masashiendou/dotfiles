FROM x11docker/lxde-wine
RUN apt-get update
RUN dpkg --add-architecture i386
RUN wget -nc https://dl.winehq.org/wine-builds/winehq.key
RUN apt-key add winehq.key
RUN echo "deb https://dl.winehq.org/wine-builds/debian buster main" | tee -a /etc/apt/sources.list
RUN apt-get update && apt-get install -y \
 --install-recommends winehq-stable
RUN wget -O /home/kindle-for-pc.exe -nc https://archive.org/download/kindle-for-pc-1-17-44170/kindle-for-pc-1-17-44170.exe
