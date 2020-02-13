# elasticsearch-nori
Elasticsearch에 노리 플러그인을 설치한 Docker Image [View on DockerHub](https://hub.docker.com/r/vanillabrain/elasticsearch-nori)

유의어, 불용어, 사용자사전이 추가되어 있으며, 필요한 사전 추가 후 pull request시 해당 사전을 추가해 드릴 예정입니다.

## Pre-installed packages

### Elasticsearch
 * Elasticsearch: 7.6.0

### Elasticsearch Plugin
 * Nori Plugin

## 이미지 빌드
```docker build -t vanillabrain/elasticsearch-nori:7.6.0 .```

## 실행
```
docker run -d --name elasticsearch \
-p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" \
vanillabrain/elasticsearch-nori:7.6.0
```

## 호스트의 사전,필터파일 volume 연결 후 실행
```
docker run -d --name elasticsearch \
-p 9200:9200 -p 9300:9300 -e "discovery.type=single-node" \
-v $PWD/user_dictionary.txt:/usr/share/elasticsearch/config/user_dictionary.txt \
-v $PWD/synonymsFilter.txt:/usr/share/elasticsearch/config/synonymsFilter.txt \
-v $PWD/stopFilter.txt:/usr/share/elasticsearch/config/stopFilter.txt \
vanillabrain/elasticsearch-nori:7.6.0
```

## Nori 적용관련 Reference

 * [코딩스타트 :: Elasticsearch - 4.한글 형태소분석기(Nori Analyzer)](https://coding-start.tistory.com/167?category=757916)
 * [Elastic 가이드북 :: 6.2 텍스트 분석 - Text Analysis](https://esbook.kimjmin.net/06-text-analysis/6.2-text-analysis)
