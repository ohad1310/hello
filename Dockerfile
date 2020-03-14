FROM nginx:alpine
ENV main /usr/share/nginx/html/
COPY index.html /usr/share/nginx/html/