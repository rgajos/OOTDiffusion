FROM runpod/pytorch:2.1.0-py3.10-cuda12.1.0-devel

WORKDIR /app
COPY . .

# upgrade pip
RUN pip install --upgrade pip

# instaluj dependencies pojedynczo (bardziej stabilne)
RUN pip install numpy scipy scikit-image opencv-python pillow
RUN pip install diffusers transformers accelerate
RUN pip install matplotlib tqdm gradio einops onnxruntime
RUN pip install runpod

CMD ["python", "handler.py"]
