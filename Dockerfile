FROM nginx:1.27-alpine

RUN rm -f /etc/nginx/conf.d/default.conf
COPY nginx/default.conf.template /etc/nginx/templates/default.conf.template
COPY index.html /usr/share/nginx/html/index.html
COPY assets /usr/share/nginx/html/assets

ENV PORT=8080
ENV NGINX_ENVSUBST_FILTER=PORT
EXPOSE 8080
