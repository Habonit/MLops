#!/bin/bash

set -e  # 오류 발생 시 즉시 종료
set -o pipefail

echo "🚀 KServe 및 관련 컴포넌트 삭제 시작..."

# Step 1: KServe 삭제
echo "🗑️ 1. KServe 삭제 중..."
kubectl delete -f kserve.yaml || echo "⚠️ KServe 리소스가 이미 삭제되었거나 존재하지 않음"

# Step 2: cert-manager 삭제
echo "🗑️ 2. cert-manager 삭제 중..."
kubectl delete -f cert-manager.yaml || echo "⚠️ cert-manager 리소스가 이미 삭제되었거나 존재하지 않음"

# Step 3: Istio 네트워크 설정 삭제
echo "🗑️ 3. Knative와 Istio 연동 설정 삭제 중..."
kubectl delete -f net-istio.yaml || echo "⚠️ net-istio 리소스가 이미 삭제되었거나 존재하지 않음"

# Step 4: Istio 삭제
echo "🗑️ 4. Istio 삭제 중..."
kubectl delete -f istio.yaml || echo "⚠️ Istio 리소스가 이미 삭제되었거나 존재하지 않음"

# Step 5: Knative Serving Core 삭제
echo "🗑️ 5. Knative Serving Core 삭제 중..."
kubectl delete -f serving-core.yaml || echo "⚠️ Knative Serving Core 리소스가 이미 삭제되었거나 존재하지 않음"

# Step 6: Knative Serving CRDs 삭제
echo "🗑️ 6. Knative Serving CRDs 삭제 중..."
kubectl delete -f serving-crds.yaml || echo "⚠️ Knative Serving CRDs 리소스가 이미 삭제되었거나 존재하지 않음"

echo "🚀 주요 리소스 삭제 완료! 네임스페이스 정리 중..."

# 네임스페이스 삭제
kubectl delete namespace kserve --ignore-not-found=true
kubectl delete namespace cert-manager --ignore-not-found=true
kubectl delete namespace knative-serving --ignore-not-found=true
kubectl delete namespace istio-system --ignore-not-found=true

echo "🎉 KServe 및 관련 리소스가 모두 삭제되었습니다!"