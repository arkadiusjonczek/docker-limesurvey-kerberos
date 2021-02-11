ARG TAG=4.3.2
FROM acspri/limesurvey:${TAG}

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update \
 && apt-get install -y libapache2-mod-auth-kerb ntpdate \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

RUN a2enmod auth_kerb
