FROM imlala/ubuntu-xfce-vnc-novnc:latest

RUN sed -i "s/archive.ubuntu.com/mirrors.bfsu.edu.cn/g" /etc/apt/sources.list \
  && apt-get remove --purge -y qbittorrent transmission telegram-desktop chromium-browser deluge xfburn \
  && apt-get --purge autoremove -y \
  && apt-get update

RUN apt-get install -y cmake autoconf automake \
  gnuradio gnuradio-dev osmo-sdr gr-osmosdr git \
  rtl-sdr librtlsdr-dev libosmosdr-dev libosmocore \
  libosmocore-dev libboost-all-dev libcppunit-dev \
  swig doxygen liblog4cpp5-dev python3-scipy python3-scapy \
  python-mysqldb python-docutils libfftw3-3 wireshark-gtk firefox

RUN git clone https://github.com/ptrkrysik/gr-gsm.git /tmp/gr-gsm \
  && mkdir /tmp/gr-gsm/build \
  && cd /tmp/gr-gsm/build \
  && cmake .. \
  && make -j4 \
  && make install \
  && ldconfig \
  && rm -rf /tmp/gr-gsm

RUN git clone https://github.com/steve-m/kalibrate-rtl.git /tmp/kalibrate-rtl \
  && cd /tmp/kalibrate-rtl \
  && ./bootstrap \
  && ./configure \
  && make -j4 \
  && make install \
  && rm -rf /tmp/kalibrate-rtl

RUN apt-get remove --purge -y cmake autoconf automake git \
  && apt-get --purge autoremove -y
