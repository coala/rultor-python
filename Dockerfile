FROM yegor256/rultor
MAINTAINER Lasse Schuirmann lasse.schuirmann@gmail.com

RUN wget -qO - https://bootstrap.pypa.io/get-pip.py | python3

RUN sudo apt-get update
RUN sudo apt-get install espeak libclang1-3.4 python3-gi python3-dbus

RUN pip3 install setuptools twine wheel munkres3 coverage pylint language-check
