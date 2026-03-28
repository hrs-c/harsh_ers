FROM nginx:alpine
COPY index.html /usr/share/nginx/html/homepage.dart
EXPOSE 80