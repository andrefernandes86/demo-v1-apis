FROM ubuntu
RUN apt-get update
RUN apt-get install curl wget nano pip python3 -y
RUN pip install requests
RUN pip install ldap3
RUN mkdir scripts
COPY *.py ./scripts
