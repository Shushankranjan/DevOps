# 📅 Day 2: Dockerfile Deep Dive + Volumes + Networking

## 🧭 Overview
Today I focused on core Dockerfile instructions, volume usage for data persistence, and basic container networking. The goal was to understand how Docker builds images, manages data across runs, and connects services or hosts to containers.

---

## ✅ Tasks Completed

- Built a custom Docker image using Python 3.10-slim
- Used environment variables with `CMD` in a basic Python script
- Mounted a volume to persist logs from an Alpine container
- Exposed ports using `-p` and tested Nginx container on localhost
- Understood the structure of a Dockerfile and how Docker caches layers

---

## 🛠️ Code & Setup Highlights

<details>
<summary>🧾 Dockerfile for Python Greeter</summary>

```Dockerfile
FROM python:3.10-slim
WORKDIR /app
COPY app.py .
CMD ["python", "app.py"]
</details> <details> <summary>👨‍💻 Python App (app.py)</summary>
import os
name = os.getenv("NAME", "DevOps")
print(f"Hello, {name} from Docker!")
</details> <details> <summary>📦 Volume Mount Example (Log Write)</summary>

docker run -v $(pwd)/data:/logs alpine sh -c "echo 'log entry' >> /logs/log.txt"
 </details> <details> <summary>🌐 Expose Port & Access Nginx</summary>
docker run -d -p 8080:80 nginx
# Visit http://localhost:8080
</details>
