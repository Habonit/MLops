#!/bin/bash

set -e  # 오류 발생 시 즉시 종료
set -o pipefail

echo "🚀 NFS 관련 리소스 삭제 시작..."

# Step 1: move-pod2 삭제
echo "🗑️ 1. move-pod2.yaml 삭제 중..."
kubectl delete -f move-pod2.yaml --ignore-not-found=true

# Step 2: move-pod 삭제
echo "🗑️ 2. move-pod.yaml 삭제 중..."
kubectl delete -f move-pod.yaml --ignore-not-found=true

# Step 3: Deployment 삭제
echo "🗑️ 3. deployment.yaml 삭제 중..."
kubectl delete -f deployment.yaml --ignore-not-found=true

# Step 4: PersistentVolume (PV) 삭제
echo "🗑️ 4. pv.yaml 삭제 중..."
kubectl delete -f pv.yaml --ignore-not-found=true

echo "🚀 모든 NFS 관련 리소스 삭제 완료! 상태 확인 중..."

# 삭제 후 현재 클러스터 상태 확인
kubectl get all

echo "🎉 NFS 관련 리소스가 모두 삭제되었습니다!"
