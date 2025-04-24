from llama_cpp import Llama

llm = Llama(
    model_path="models/llama-2-7b-chat.Q4_K_M.gguf",
    n_gpu_layers=32,  # 💡 Offload all layers to GPU
    n_ctx=2048,
    use_mlock=False,   # Disable memory lock in container
    use_mmap=True,
    verbose=True
)

print("🧠 Chatbot ready! Type 'exit' to quit.\n")

while True:
    prompt = input("You: ")
    if prompt.lower() == "exit":
        break
    response = llm(prompt, max_tokens=256, stop=["</s>"])
    print("Bot:", response["choices"][0]["text"].strip())
