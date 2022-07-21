FROM ubuntu
RUN apt-get update
RUN apt-get install nano python3 -y
RUN apt-get install pip -y
RUN pip install requests
RUN pip install ldap3
RUN mkdir scripts
COPY *.py ./scripts
