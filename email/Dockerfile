FROM ubuntu:latest

RUN apt update --fix-missing -y

RUN apt upgrade -y

RUN apt install postfix dovecot-imapd dovecot-pop3d -y

RUN apt install -q -y syslog-ng


COPY main.cf /etc/postfix

COPY ./dovecot/10-auth.conf /etc/dovecot/conf.d


RUN useradd -m bob
RUN useradd -m patrick
RUN useradd -m sales
RUN useradd -m redes

RUN echo "bob:redes"|chpasswd
RUN echo "patrick:redes"|chpasswd
RUN echo "sales:redes"|chpasswd
RUN echo "redes:redes"|chpasswd

CMD ["sh", "-c", "service syslog-ng start ; service postfix start ; service dovecot start; tail -F /var/log/mail.log"]
