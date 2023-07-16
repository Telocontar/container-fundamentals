# use a smaller base image (https://hub.docker.com/_/alpine)
FROM alpine:3.14

LABEL org.opencontainers.image.authors="https://github.com/Telocontar"
LABEL org.opencontainers.image.source=https://github.com/Telocontar/container-fundamentals
LABEL org.opencontainers.image.description="Containter Fundamentals - Static Website Image"
LABEL org.opencontainers.image.licenses=APACHE2

# https://docs.docker.com/develop/develop-images/dockerfile_best-practices/#run
# ensure your Dockerfile installs the latest package versions with no further coding or manual intervention + clean up the apt cache by removing /var/lib/apt/lists
RUN apk update && apk add \
    nginx \
&& rm -rf /var/lib/apt/lists/*

COPY config/nginx.conf /etc/nginx/
COPY web_content/ /var/www

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
