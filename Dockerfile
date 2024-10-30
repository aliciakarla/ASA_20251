FROM ubuntu:latest

RUN apt update -y

RUN apt install bind9 dnsutils -y

