FROM python:3.9-slim
ENV PYTHONUNBUFFERED=1
ENV PIP_DEFAULT_TIMEOUT=1200
WORKDIR /app
COPY requirements.txt .
RUN python3 -m pip install --no-cache-dir -r requirements.txt
COPY . .
CMD ["python", "main.py"]
