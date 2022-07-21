FROM ubuntu
RUN apt-get update -y
RUN apt-get install pyton3 -y
RUN apt-get install nano -y
RUN apt-get install pip -y
RUN pip install requests
RUN pip install ldap3
RUN mkdir scripts
COPY *.py ./scripts
