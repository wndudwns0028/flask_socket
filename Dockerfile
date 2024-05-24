# 기반이 되는 이미지
FROM python:3.10

# 작업 디렉토리 설정
WORKDIR /app

# 소스 코드를 컨테이너로 복사
COPY . .

# Dockerfile에서 사용되어 기본 운영 체제에 필요한 패키지를 설치하는 명령어. 이를 통해 Python 패키지를 빌드하거나 설치할 때 필요한 시스템 의존성을 설정
RUN apt-get update && apt-get install -y libpq-dev build-essential

# 필요한 패키지 설치
RUN pip install --no-cache-dir -r requirements.txt

# Flask 애플리케이션을 실행
CMD ["python3", "chat-server.py"]
