#!/bin/bash

set -e  # 오류 발생 시 즉시 종료
set -o pipefail

echo "🚀 ArgoCD 삭제 시작..."

# Step 1: ArgoCD 리소스 삭제
echo "🗑️ 1. ArgoCD 리소스 삭제 중..."
kubectl delete -n argocd -f argocd-install.yaml || echo "⚠️ ArgoCD 리소스가 이미 삭제되었거나 존재하지 않음"

# Step 2: ArgoCD 네임스페이스 삭제
echo "🗑️ 2. ArgoCD 네임스페이스 삭제 중..."
kubectl delete namespace argocd --ignore-not-found=true

# Step 3: ArgoCD 관련 CRD 삭제 (남아 있을 경우)
echo "🗑️ 3. ArgoCD 관련 CRD 삭제 중..."
kubectl delete crd $(kubectl get crds | grep argoproj | awk '{print $1}') || echo "⚠️ CRD가 이미 삭제되었거나 존재하지 않음"

# Step 4: ArgoCD LoadBalancer 서비스 삭제
echo "🗑️ 4. ArgoCD LoadBalancer 서비스 삭제 중..."
kubectl delete svc argocd-server -n argocd --ignore-not-found=true

# Step 5: 삭제 확인
echo "🚀 모든 ArgoCD 리소스 삭제 완료! 상태 확인 중..."

kubectl get all --all-namespaces | grep argocd || echo "✅ ArgoCD 관련 리소스가 모두 삭제되었습니다!"
kubectl get namespaces | grep argocd || echo "✅ ArgoCD 네임스페이스가 삭제되었습니다!"

echo "🎉 ArgoCD 삭제가 완료되었습니다!"
