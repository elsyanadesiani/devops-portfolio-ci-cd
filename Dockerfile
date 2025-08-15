# Gunakan image Python ringan
FROM python:3.12-slim

# Variabel env supaya Python tidak bikin file cache
ENV PYTHONDONTWRITEBYTECODE=1 \
    PYTHONUNBUFFERED=1

# Set direktori kerja
WORKDIR /app

# Copy dependencies dan install
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy source code
COPY app.py .

# Ekspos port 8000
EXPOSE 8000

# Jalankan aplikasi
CMD ["python", "app.py"]
