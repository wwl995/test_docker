FROM ubuntu

# 将宿主机的 docker.sock 复制到容器中
COPY /var/run/docker.sock /var/run/docker.sock

RUN apt-get update &&  curl -fsSL https://test.docker.com -o test-docker.sh && sh test-docker.sh
