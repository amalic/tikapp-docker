FROM python:3

WORKDIR /app

RUN apt-get update && \
  apt-get install -y openjdk-8-jdk && \
  wget http://apache.hippo.nl/tika/tika-app-1.19.1.jar

ENV TIKA_APP_JAR="/app/tika-app-1.19.1.jar"

RUN git clone https://github.com/fedelemantuano/tika-app-python.git && \
  cd tika-app-python && \
  python3 setup.py install

WORKDIR /app/tika-app-python/tikap

ENTRYPOINT ["tikapp"]