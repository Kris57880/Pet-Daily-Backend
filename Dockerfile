FROM mariadb:10-jammy

RUN apt-get update && \
      apt-get -y install sudo

# RUN useradd -m docker && echo "docker:docker" | chpasswd && adduser docker sudo

RUN apt-get update \
    && apt-get install -y python3 python3-pip \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update \
    && apt-get install -y libmysqlclient-dev pkg-config \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install django mysqlclient requests djangorestframework-jwt djangorestframework gunicorn

RUN apt-get update \
    && apt-get install -y tmux vim git \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER root
CMD /bin/bash

WORKDIR /home/multimedia
# CMD ["gunicorn", "--bind", "0.0.0.0:8000", "--workers", "3", "multimedia.wsgi:application"]
