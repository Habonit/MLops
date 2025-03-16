#!/bin/bash

set -e  # 오류 발생 시 즉시 종료
set -o pipefail

echo "🚀 KServe 설치 시작..."

# Step 1: Knative Serving CRDs 설치
echo "✅ 1. Knative Serving CRDs 적용 중..."
kubectl apply -f serving-crds.yaml

# Step 2: Knative Serving Core 설치
echo "✅ 2. Knative Serving Core 적용 중..."
kubectl apply -f serving-core.yaml

# Step 3: Istio 설치
echo "✅ 3. Istio 적용 중..."
kubectl apply -f istio.yaml

# Step 4: Istio와 Knative 연동 설정
echo "✅ 4. Knative와 Istio 연동 설정 적용 중..."
kubectl apply -f net-istio.yaml

# Step 5: cert-manager 설치
echo "✅ 5. cert-manager 적용 중..."
kubectl apply -f cert-manager.yaml

# Step 6: KServe 설치
echo "✅ 6. KServe 적용 중..."
kubectl apply -f kserve.yaml

echo "🚀 모든 KServe 컴포넌트 설치 완료! 상태 확인 중..."

# 설치된 리소스 상태 확인
echo "🔍 설치된 리소스 상태 확인:"
kubectl get pods -n knative-serving
kubectl get pods -n istio-system
kubectl get pods -n cert-manager
kubectl get pods -n kserve

echo "🎉 KServe 설치가 완료되었습니다!"
