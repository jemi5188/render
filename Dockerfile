# use ubuntu 22.04 
FROM ubuntu:22.04

# install Shellinabox
RUN apt-get update && \
    apt-get install -y shellinabox && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# set root password 'root'
RUN echo 'root:frepai' | chpasswd

# ssh port
EXPOSE 22

# STAR shellinabox
CMD ["/usr/bin/shellinaboxd","-t","-s","/:LOGIN"]
