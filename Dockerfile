FROM nginx:latest
RUN sed -i 's/nginx/Mamoune/g' /usr/share/nginx/html/index.html
expose 80
