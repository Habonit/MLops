# Dockerfile
FROM python:3.8-slim

# 환경 변수 설정
ENV AIRFLOW_HOME=/usr/local/airflow

# 필요한 시스템 라이브러리 설치
RUN apt-get update && \
    apt-get install -y gcc libc-dev vim && \
    rm -rf /var/lib/apt/lists/*

# Airflow 설치
RUN pip install 'apache-airflow==2.8.1' \
 --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.8.1/constraints-3.8.txt"

# Airflow 환경 설정
RUN mkdir -p $AIRFLOW_HOME
WORKDIR $AIRFLOW_HOME
RUN airflow db init

# Airflow DAGs 폴더에 DAG 파일 복사
COPY my_dag.py $AIRFLOW_HOME/dags/

# Airflow 웹 서버 포트 노출
EXPOSE 8080

# Airflow 웹 서버 및 스케줄러 실행
CMD airflow webserver -p 8080 & airflow scheduler

