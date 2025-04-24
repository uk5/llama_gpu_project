FROM nvidia/cuda:12.1.1-devel-ubuntu22.04

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git python3 python3-pip build-essential cmake ninja-build

# Copy the pre-downloaded wheel and install it
COPY llama_cpp_python-0.2.24+cu121-cp310-cp310-manylinux_2_31_x86_64.whl /tmp/
RUN pip3 install /tmp/llama_cpp_python-0.2.24+cu121-cp310-cp310-manylinux_2_31_x86_64.whl && rm /tmp/llama_cpp_python-0.2.24+cu121-cp310-cp310-manylinux_2_31_x86_64.whl

# Copy app source
WORKDIR /app
COPY . /app

CMD ["python3", "chat_llama.py"]
