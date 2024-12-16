FROM ubuntu:20.04

# Configurar ambiente para evitar interacción del usuario
ENV DEBIAN_FRONTEND=noninteractive
ENV TZ=Europe/Madrid

WORKDIR /etc/app
COPY . .

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    libtool \
    autotools-dev \
    automake \
    pkg-config \
    libssl-dev \
    libevent-dev \
    bsdmainutils \
    libboost-system-dev \
    libboost-filesystem-dev \
    libboost-chrono-dev \
    libboost-program-options-dev \
    libboost-test-dev \
    libboost-thread-dev \
    libjpeg-dev \
    libdb5.3++-dev \
    libdb5.3++ \
    libdb5.3-dev \
    libzmq3-dev \
    libminiupnpc-dev \
    libqt5gui5 \
    libqt5core5a \
    libqt5dbus5 \
    qttools5-dev \
    qttools5-dev-tools \
    libprotobuf-dev \
    protobuf-compiler \
    libqrencode-dev \
    git \
    curl \
    wget
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

COPY bells-3.0.0-rc2/bells.conf /root/.bells/bells.conf

CMD ["/etc/app/bells-3.0.0-rc2/bin/bellsd", "-printtoconsole"]
