# 🦙 llama_gpu_project

This project sets up **LLaMA 7B locally with full GPU acceleration using Docker and CUDA 12.1**. It's a minimal, efficient environment for running LLaMA GGUF models using `llama-cpp-python`.

## 🚀 Features
- ⚡ LLaMA 7B (Q4_K_M) running on GPU (RTX 3070 Ti tested)
- 🐳 Dockerized with CUDA 12.1 and AVX2 wheels
- 🧠 `llama-cpp-python` for local inference
- ✅ Clean structure for extension (Streamlit, RAG, PDF Q&A)

-----------------------------------------------------------------------------------------------------
1. 🔧 How to Build and Run
## 🔧 How to Build and Run

### Build Docker Image
```bash
docker build -t llama-gpu .

Run the Model
docker run --rm --gpus all -it -v "${PWD}/models:/app/models" llama-gpu

You should see:
offloading 32 repeating layers to GPU
VRAM used: 3718.38 MiB


---

### 2. 📥 **Model Download Instructions**
Tell them where to get the GGUF model:

```markdown
## 📥 Download GGUF Model

Go to: [TheBloke/Llama-2-7B-Chat-GGUF](https://huggingface.co/TheBloke/Llama-2-7B-Chat-GGUF)

Download: llama-2-7b-chat.Q4_K_M.gguf

3. 📦 Precompiled CUDA Wheel

## 📦 Install Precompiled CUDA Wheel

Download the `.whl` from:
[cu121 wheel for Python 3.10](https://jllllll.github.io/llama-cpp-python-cuBLAS-wheels/AVX2/cu121/llama-cpp-python/)

File:llama_cpp_python-0.2.24+cu121-cp310-cp310-manylinux_2_31_x86_64.whl

4. 🛠️ File Descriptions

## 🛠️ File Descriptions

- `Dockerfile` – Sets up CUDA 12.1 + llama-cpp-python
- `chat_llama.py` – Minimal chatbot to prompt LLaMA locally
- `models/` – Holds `.gguf` model files (ignored in Git)
- `.gitignore` – Prevents tracking heavy model files
- `llama_cpp_python-*.whl` – Prebuilt wheel for GPU inference



