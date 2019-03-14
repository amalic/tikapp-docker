FROM python:3

LABEL MAINTAINER <alexander.malic at maastrichtuniversity.nl>

WORKDIR /app

RUN apt-get update && \
  apt-get install -y openjdk-8-jre && \
  wget http://apache.40b.nl/tika/tika-app-1.20.jar

ENV TIKA_APP_JAR="/app/tika-app-1.20.jar"

RUN git clone https://github.com/fedelemantuano/tika-app-python.git && \
  cd tika-app-python && \
  python3 setup.py install

ENTRYPOINT ["tikapp"]
