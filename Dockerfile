FROM yegor256/rultor
MAINTAINER Lasse Schuirmann lasse.schuirmann@gmail.com

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN wget -qO - https://bootstrap.pypa.io/get-pip.py | python3 && \
    pip3 install -U pip

RUN sudo apt-get update -y

RUN pip3 install setuptools twine wheel munkres3 coverage pylint language-check pytest tox appdirs
