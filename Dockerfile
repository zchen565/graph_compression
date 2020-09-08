FROM ubuntu:14.04

ARG UNAME
ARG GNAME
ARG UID
ARG GID

#RUN sed -i s@/archive.ubuntu.com/@/mirrors.aliyun.com/@g /etc/apt/sources.list
#RUN apt-get clean
#RUN apt-get update

RUN apt-get update && apt-get install -y \
  build-essential \
  check \
  flex-old \
  g++ \
  # git \
  libboost-serialization-dev \
  # libcrypto++-dev \
  libgmp3-dev \
  libmysqlclient-dev \
  libpcre3-dev \
  libssl-dev \
  libxml2-dev \
  libzmq3-dev \
  # libtool \
  pkg-config \
  python \
  python-dev \
  python-dpkt \
  python-networkx \
  python-numpy \
  python-matplotlib \
  python-scipy \
  # python-statsmodels \
  python-pip \
  sudo \
  tmux \
  vim \
  git \
  tmux


#Generates group
# RUN addgroup --gid ${GID} ${GNAME}

#Generates user
# RUN adduser --disabled-password --gecos '' --uid ${UID} --gid ${GID} --home /home/${UNAME} ${UNAME} && adduser ${UNAME} sudo && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

USER root
WORKDIR /root
