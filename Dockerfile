# use the official NGINX image from the docker hub
FROM nginx:stable-perl

# Remove the default NGINX website
RUN rm -rf /usr/share/nginx/html/*

# Copy the website files from the local directory to the container
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80 

# start NGINX
CMD ["nginx", "-g", "daemon off;"]

