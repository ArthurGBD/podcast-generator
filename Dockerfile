FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
  python3.12 \ 
  python3-pip \
  git 

#RUN pip3 install PyYAML
#RUN pip install "cython<3.0.0" && pip install --no-build-isolation pyyaml==5.4.1
RUN pip3 install PyYAML==6.0.1


COPY  feed.py /usr/bin/feed.py
COPY  entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
