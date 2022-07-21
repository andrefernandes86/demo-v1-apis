FROM ubuntu
RUN apt-get update -y
RUN apt-get install python3 nano pip -y
RUN pip install requests
RUN pip install ldap3
RUN mkdir scripts
COPY *.py ./scripts
