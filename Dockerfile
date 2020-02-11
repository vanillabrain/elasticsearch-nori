FROM elasticsearch:7.5.2
LABEL maintainer="dosunyun@vanillabrain.com"
WORKDIR /usr/share/elasticsearch
RUN /usr/share/elasticsearch/bin/elasticsearch-plugin install analysis-nori
COPY *.txt /usr/share/elasticsearch/config/