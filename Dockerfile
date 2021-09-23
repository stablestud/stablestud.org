FROM "nginx:mainline-alpine"

COPY "./html" "/usr/share/nginx/html/"
COPY "./nginx.conf" "/etc/nginx/nginx.conf"

RUN set -x \
	&& nginx -t
