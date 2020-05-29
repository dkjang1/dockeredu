#Step1: Ubuntu(base image)
FROM ubuntu:latest

#Step2: Nginx intall
RUN apt-get update && apt-get install -y -q nginx

#Step3: file copy
COPY ./index.html /var/www/html/

#port 80
EXPOSE 80

#Step4: Nginx start
CMD ["nginx","-g","daemon off;"]
