FROM debian:9.2

RUN apt-get -qq update
RUN apt-get install -y \
  curl \
  nginx \
  htop
COPY start /
ENV MESSAGE hello
EXPOSE 80

CMD /start
