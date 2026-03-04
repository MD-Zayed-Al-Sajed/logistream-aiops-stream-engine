FROM python:3.11-slim
WORKDIR /app

COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

COPY . /app
ENV PYTHONPATH=/app

# run both modes by default (you can change later)
CMD ["python","-m","services.producers.main","--mode","both","--eps-shipments","2","--eps-gps","2"]