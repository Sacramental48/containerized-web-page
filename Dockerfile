FROM nginx:alpine

COPY . /usr/share/nginx/html

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --start-priod=5s --retries=3 \
  CMD wget -q --spider http://127.0.0.1/ || exit 1
