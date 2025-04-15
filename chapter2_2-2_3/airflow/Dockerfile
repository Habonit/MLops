FROM python:3.8-slim

ENV AIRFLOW_HOME=/usr/local/airflow

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get install -y gcc libc-dev vim && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

RUN mkdir -p $AIRFLOW_HOME/dags
COPY my_dag.py $AIRFLOW_HOME/dags/
COPY hello_airflow_dag.py $AIRFLOW_HOME/dags/
COPY ml_development_dags.py $AIRFLOW_HOME/dags/
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR $AIRFLOW_HOME
EXPOSE 8080

ENTRYPOINT ["/entrypoint.sh"]
