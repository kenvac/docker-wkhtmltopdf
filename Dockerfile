FROM debian:jessie
LABEL maintainer "Kinner Vachhani <kinner.vachhani@accessbookings.com>"

RUN apt-get update \
    && apt-get install -y \
    wget \
    fontconfig \
    libxrender1 \
    xfonts-base \
    libjpeg62-turbo \
    libxext6 \
    xfonts-75dpi 
RUN wget https://github.com/wkhtmltopdf/wkhtmltopdf/releases/download/0.12.2.1/wkhtmltox-0.12.2.1_linux-jessie-amd64.deb
RUN dpkg -i wkhtmltox-0.12.2.1_linux-jessie-amd64.deb
RUN apt-get install -f

ENTRYPOINT ["wkhtmltopdf"]
