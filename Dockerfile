FROM nginx:stable
COPY index.html /usr/share/nginx/html/index.html

HEALTHCHECK CMD curl --fail http://localhost/ || exit 1

RUN useradd -ms /bin/bash myuser
USER myuser