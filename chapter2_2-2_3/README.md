# Chapter 2_2-2_3: mlops 개괄과 docker, k8s, airflow, ci/cd에 대한 기초적인 overview 
이 레포지토리는 **Chapter 2_2: 머신러닝 상품화를 위한 기술**과 **Chapter 2_3: 실전 MLOps 구성 요소 이해 및 실습**의 내용을 정리한 자료입니다.  
Chapter 2_2에서는 MLOps의 필요성과 단계별 구현 방식을 중심으로 MLOps 전체 사이클을 조망하며,  
[관련 기술 블로그 글](https://velog.io/@paradeigma/MLOPS-이론-5.-MLops-사이클에서-나의-위치)에서는 학습 내용을 기반으로 개인적 인사이트를 정리하였습니다.

Chapter 2_3에서는 실제 MLOps 파이프라인에서 사용되는 주요 기술 스택을 이론과 실습으로 다룹니다.  
사용된 기술에는 `Docker`, `Kubernetes(K8s)`, `Airflow`, `Jenkins`를 활용한 CI/CD 구성, `HTTP 통신 방식`, `가상환경 구축` 등이 포함되어 있으며,  
각 기술 요소에 대해 실습 가능한 코드 및 설정 예제가 함께 제공됩니다.

## 파일 구성

| 파일명 | 내용 요약 |
|--------|-----------|
|  |  |

## 학습 목표

## 참고 사항

## 프로젝트 구조
```plaintext
chapter2_2-2_3/
├── docs/                            # 강의 이론 자료
├── practice_code/                   # 강의 실습 코드
├── airflow/                         # Airflow 실습 코드
├── docker/                          # 도커 실습 디렉토리
|   ├──basic/                        # 도커 기본
|   ├──nginx/                        # 도커 허브에서 nginx 불러와 컨테이너 만들어보기 
|   ├──scikitlearn/                  # 실제 모델 추론을 도커를 통해 자동화해보기기
└── README.md               
```

---

## 참고 강의 자료
- [강의 이론 자료](https://drive.google.com/drive/folders/1Y1e1j5pkLWD9_QLMNU6QQR_mHzqHFuka)
- [강의 실습 코드](https://drive.google.com/drive/folders/1CBgVPF7eo4_bE8pIZAGgrHI6YiyGAnIH)
