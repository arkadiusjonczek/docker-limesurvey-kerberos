FROM acspri/limesurvey:latest
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y libapache2-mod-auth-kerb
RUN a2enmod auth_kerb
