FROM ubuntu:20.04
RUN apt-get update -qq
RUN apt-get install -y \
  curl \
  nginx
COPY start.sh /
RUN chmod +x /start.sh
EXPOSE 80
CMD ["/start.sh"]
