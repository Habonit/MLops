#!/bin/bash

set -e  # 에러 발생 시 스크립트 중단

echo "🗑️ Kafka & Zookeeper 리소스 삭제 시작..."

# 파일 경로가 상대경로일 경우 현재 위치 기준으로 수정하세요
kubectl delete -f zookeeper.yaml
kubectl delete -f kafka.yaml

echo "✅ Kafka & Zookeeper 리소스 삭제 완료!"
