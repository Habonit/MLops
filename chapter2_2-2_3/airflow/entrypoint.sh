#!/bin/bash

# DB 초기화
airflow db migrate

# 관리자 계정 생성 (이미 있으면 생략됨)
airflow users create \
    --username admin \
    --password admin \
    --firstname admin \
    --lastname admin \
    --role Admin \
    --email admin@example.com || true

# 스케줄러 백그라운드 실행
airflow scheduler &

# 웹서버 포그라운드 실행 (컨테이너 유지됨)
exec airflow webserver -p 8080
