# 기본 이미지로 Python 3.8을 사용
FROM python:3.8-slim

# 작업 디렉토리 설정
WORKDIR /app

# 필요한 Python 라이브러리 설치
COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# RUN wget -P /app/data/ https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data


# 애플리케이션 코드 복사
COPY . /app

# 스크립트 실행
CMD ["python", "./sample_scripts.py"]

