FROM runpod/pytorch:2.0.1-py3.10-cuda11.8.0-devel

WORKDIR /app
COPY . .

RUN pip install --upgrade pip

RUN pip install numpy scipy scikit-image opencv-python pillow
RUN pip install diffusers transformers accelerate
RUN pip install matplotlib tqdm gradio einops onnxruntime
RUN pip install runpod

CMD ["python", "handler.py"]
