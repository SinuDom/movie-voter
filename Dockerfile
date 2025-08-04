FROM nginx:alpine

RUN apk update && apk upgrade

COPY index.html /usr/share/nginx/html/index.html

# Use a non-root user (nginx user exists in the image)
USER nginx

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]