FROM ubuntu:latest

RUN apt update -y

RUN apt install bind9 dnsutils -y

COPY named.conf.local /etc/bind

COPY db.asa.br /etc/bind

<<<<<<< HEAD

EXPOSE 53/tcp
EXPOSE 53/udp
=======
EXPOSE 53/tcp
EXPOSE 53/udp 
>>>>>>> dc04a89a42bc6cfa6f71c36ae82c81e10bda0f11

CMD ["/usr/sbin/named", "-g", "-c", "/etc/bind/named.conf", "-u", "bind"]
