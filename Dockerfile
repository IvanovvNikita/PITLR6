FROM python:3.9-slim
ENV PYTHONUNBUFFERED=1
WORKDIR /app
COPY requirements.txt .
RUN pip install flask
COPY . .
CMD ["python", "main.py"]
