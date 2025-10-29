# Gunakan image Python
FROM python:3.10-slim

# Set direktori kerja di dalam container
WORKDIR /app

# Salin semua file dari repo ke container
COPY . .

# Instal dependensi yang diperlukan
RUN pip install --no-cache-dir -r requirements.txt

# Jalankan bot Telegram
CMD ["python", "main.py"]

