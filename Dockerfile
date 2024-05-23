# 기반이 되는 이미지
FROM python:3.10

# 작업 디렉토리 설정
WORKDIR /app

# 소스 코드를 컨테이너로 복사
COPY . .

# 필요한 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# Flask 애플리케이션을 실행
CMD ["python3", "flask-server.py"]
