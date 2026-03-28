FROM nginx:alpine
COPY index.html /usr/share/nginx/html/hrs.php
COPY index.html /usr/share/nginx/html/trial.php
EXPOSE 80