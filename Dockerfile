FROM node:10

RUN npm install create-react-app -g

# Create app user
RUN useradd --home /home/singleops -M singleops -s /bin/bash &&\
	mkdir /home/singleops &&\
	chown -R singleops:singleops /home/singleops &&\
	adduser singleops sudo && \
	echo 'singleops ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

COPY docker-entrypoint.sh /
RUN chmod 755 /docker-entrypoint.sh

USER singleops
WORKDIR /home/singleops


CMD  /docker-entrypoint.sh project
