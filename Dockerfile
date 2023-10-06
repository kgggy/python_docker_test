# 베이스 이미지로부터 시작
FROM python:3.9

# 작업 디렉토리 설정
WORKDIR /app

# 파이썬 프로젝트 파일을 복사
COPY . /app

# 프로젝트에 필요한 패키지 설치
RUN pip install -r requirements.txt

# 파이썬 프로젝트 실행
CMD ["python", "main.py"]
