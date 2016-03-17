FROM yegor256/rultor
MAINTAINER Lasse Schuirmann lasse.schuirmann@gmail.com

RUN locale-gen en_US.UTF-8
ENV LANG=en_US.UTF-8

RUN wget -qO - https://bootstrap.pypa.io/get-pip.py | python3

RUN sudo apt-get update -y
RUN sudo apt-get install espeak libclang1-3.4 python3-gi python3-dbus -y

RUN pip3 install setuptools twine wheel munkres3 coverage pylint language-check pytest tox appdirs

RUN wget http://search.maven.org/remotecontent?filepath=org/zanata/zanata-cli/3.6.0/zanata-cli-3.6.0-dist.zip -O /opt/zanata-cli-3.6.0-dist.zip
RUN cd /opt && unzip zanata-cli-3.6.0-dist.zip
RUN ln -s /opt/zanata-cli-3.6.0/bin/zanata-cli /usr/local/bin/zanata-cli
