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
| airflow | airflow 시연 예시 |
| docker | docker 시연 예시 |

## 학습 목표
이 자료는 MLOps의 핵심 개념과 기술들을 직접 실습하며 익히는 데 목적이 있습니다. 특히 Docker, Kubernetes(K8s), Airflow, Jenkins 기반의 CI/CD, HTTP 통신 방식, 가상환경 구성 등 실제 MLOps 파이프라인을 구성하는 데 필요한 주요 도구들을 한 번씩 손으로 다뤄보는 경험에 중점을 두었습니다. 학습 과정에서는 단순한 기능 테스트를 넘어서, 각 도구가 MLOps 전체 사이클 내에서 어떤 역할을 하고 어떻게 유기적으로 연결되는지 "왜 쓰는지"에 대한 이해와 감각을 얻는 데 집중했습니다.

아래 velog 글에선 이 과정에서 느낀 흐름, 방향성, 그리고 개인적인 인사이트도 함께 정리해두었습니다.

🔗 [Correctly 프로젝트: 0. 소개 및 기술 스택](https://velog.io/@paradeigma/MLOPS-실습-2.-Correctly-프로젝트-0-소개-및-기술-스택)

🔗 [MLOps 이론: Docker, Airflow, MLflow, Postgres로 구성하는 기초 환경](https://velog.io/@paradeigma/MLOPS-이론-6.-Docker-Airflow-MLflow-Postgres로-구축하는-MLOps-기초-환경)

## 참고 사항

MLOps 환경을 구성하고 실험한 결과물은 아래 GitHub 레포지토리에서 확인할 수 있습니다.
해당 레포는 Docker + Airflow + MLflow + PostgreSQL 기반의 기본적인 MLOps 템플릿을 구성해 둔 것으로, 실제 프로젝트나 테스트 환경에서도 활용할 수 있도록 설계되어 있습니다.

🔗 [training-pipeline GitHub Repository](https://github.com/Habonit/training-pipeline)
→ MLOps 실습 환경 구성 결과물 (main 브랜치 기준)


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
