FROM python:3.11-slim

WORKDIR /app

# deps
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# code
COPY . /app

# important: make /app importable
ENV PYTHONPATH=/app

# Faust worker (matches your working local command)
CMD ["python","-m","faust","-A","services.stream_processor.logistream_stream.app","worker","-l","info","--web-port","6066"]