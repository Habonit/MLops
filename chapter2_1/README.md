# Chapter 2_1: MLOps 기반 머신러닝 전처리 및 모델링 실습

본 레포지토리는 **MLOps 교육 과정 중 `Chapter 2_1: 머신러닝 상품화 모델을 만들기 위한 실전 여정들`**을 수강한 후, 추가 학습한 실습 내용을 정리한 자료입니다. 데이터 구조 이해부터 불균형 데이터 처리, EDA 자동화, AutoML, 모델 훈련에 이르기까지 **머신러닝 시스템에서 데이터 전처리와 모델 빌딩의 핵심 단계를 실습 중심으로 구성**하였습니다.

## 파일 구성

| 파일명 | 내용 요약 |
|--------|-----------|
| `_1_Data_Sturucture.ipynb` | 정형 / 반정형 / 비정형 데이터 구조의 차이와 특성 소개 |
| `_2_Data_Sampling_for_Imbalance.ipynb` | 불균형 데이터 처리 기법 실습 (SMOTE, ADASYN, SMOTE Tomek 등) |
| `_3_AIF360.ipynb` | [AIF360](https://velog.io/@paradeigma/MLOPS이론-2.-AIF360)을 활용한 데이터 공정성 교정 실습 |
| `_4_AutoML.ipynb` | 다양한 AutoML 라이브러리(예: H2O, PyCaret 등)를 활용한 자동 모델링 실습 |
| `_5_EDA.ipynb` | 기본적인 EDA 절차(변수 분포, 상관관계 등) 수행 예제 |
| `_6_Chisquare_VIF.ipynb` | [카이제곱 검정과 VIF(다중공선성 제거)를 통한 EDA 자동화 실습](https://velog.io/@paradeigma/MLOPS-이론-5.-MLops-사이클에서-나의-위치) |
| `_7_Embedding_Regression.ipynb` | [MiniLM 기반 임베딩 회귀 모델](https://velog.io/@paradeigma/Minilm-6v) 구축 및 예측 실험 |

## 학습 목표

- **MLOps 실무 흐름 이해**: 데이터 탐색부터 전처리, 모델링까지의 실전 여정 경험
- **불균형 데이터 처리 역량 강화**: Oversampling 기법 및 공정성 강화(AIF360) 적용
- **EDA 자동화 및 AutoML 적용**: 반복적인 분석 프로세스 자동화 및 모델 성능 비교
- **모델 훈련**: 임베딩 모델을 훈련시킴으로써 모델을 훈련 시키는 방법 습득

## 참고 사항

- 본 실습은 `Chapter 2_1`을 기반으로 구성되었으며, 개인 학습 목적에 맞춰 확장되었습니다.
- 실습 환경은 주피터 노트북을 기반으로 구성되어 있어 실행 및 테스트가 용이합니다.

## 프로젝트 구조
```plaintext
chapter2_1/
├── data/                          # 데이터셋 저장 디렉토리
├── docs/                          # 강의 이론 자료
├── practice_code/                 # 강의 실습 코드
├── _1_Data_Sturucture.ipynb       # 데이터 구조 (정형/비정형) 소개
├── _2_Data_Sampling_for_Imbalance.ipynb   # 불균형 데이터 처리 (SMOTE 등)
├── _3_AIF360.ipynb                # AIF360을 활용한 공정성 처리
├── _4_AutoML.ipynb                # AutoML을 활용한 자동화 학습
├── _5_EDA.ipynb                   # 기본적인 탐색적 데이터 분석
├── _6_Chisquare_VIF.ipynb         # 카이제곱, VIF 기반 EDA 자동화
├── _7.Embedding_Regression.ipynb  # 임베딩 기반 회귀 모델 학습
├── README.md                      # 프로젝트 설명 문서
└── requirements.txt               # 실습 환경 패키지 의존성 목록
```

---

## 참고 강의 자료
- [강의 이론 자료](https://drive.google.com/drive/folders/17EBsOoYToguGwLvG2pkvnEhRKHKgusZx)
- [강의 실습 코드](https://drive.google.com/drive/folders/1RxYS2XeoYuX3BYvTW39LEwnna3uABu8I)
