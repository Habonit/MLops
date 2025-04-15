FROM python:3.8-slim

ENV AIRFLOW_HOME=/usr/local/airflow

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get install -y gcc libc-dev vim && \
    rm -rf /var/lib/apt/lists/*

RUN pip install 'apache-airflow==2.8.1' \
 --constraint "https://raw.githubusercontent.com/apache/airflow/constraints-2.8.1/constraints-3.8.txt"

RUN mkdir -p $AIRFLOW_HOME/dags
COPY my_dag.py $AIRFLOW_HOME/dags/
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR $AIRFLOW_HOME
EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
