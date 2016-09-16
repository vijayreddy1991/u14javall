FROM drydock/u14all:{{%TAG%}}

ADD . /u14javall

RUN /u14javall/install.sh
