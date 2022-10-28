FROM ubuntu 
RUN apt update 
RUN apt install -f apache2 
RUN apt install –f apache2-utils 
RUN apt clean 
EXPOSE 80
CMD [“apache2ctl”, “-D”, “FOREGROUND”]
