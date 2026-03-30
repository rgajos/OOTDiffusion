FROM runpod/pytorch:2.0.1-py3.10-cuda11.8.0-devel

WORKDIR /app
COPY . .

RUN pip install --upgrade pip
RUN pip install runpod

CMD ["python", "handler.py"]
