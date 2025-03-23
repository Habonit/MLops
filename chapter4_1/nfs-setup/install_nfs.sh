#!/bin/bash

# gcloud auth login
# gcloud container clusters get-credentials lecture-cluster --zone us-central1-c


set -e  # 오류 발생 시 즉시 종료
set -o pipefail

echo "🚀 NFS 관련 리소스 배포 시작..."

# Step 1: PersistentVolume (PV) 배포
echo "📦 1. pv.yaml 배포 중..."
kubectl apply -f pv.yaml

# Step 2: Deployment 배포
echo "📦 2. deployment.yaml 배포 중..."
kubectl apply -f deployment.yaml

# Step 3: move-pod 배포
echo "📦 3. move-pod.yaml 배포 중..."
kubectl apply -f move-pod.yaml

# Step 4: move-pod2 배포
echo "📦 4. move-pod2.yaml 배포 중..."
kubectl apply -f move-pod2.yaml

echo "🚀 모든 NFS 관련 리소스 배포 완료! 상태 확인 중..."

# 배포된 리소스 상태 확인
kubectl get all

echo "🎉 NFS 관련 리소스 배포가 완료되었습니다!"
