FROM python:3.11-slim

# ---- set working directory ----
WORKDIR /app

# ---- system deps needed for some wheels ----
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    gcc \
 && rm -rf /var/lib/apt/lists/*

# ---- install python deps ----
COPY requirements.txt /app/requirements.txt
RUN pip install --no-cache-dir -r /app/requirements.txt

# ---- copy project files ----
COPY . /app

# ensure /app is on python path
ENV PYTHONPATH=/app

# set permissions (optional)
RUN chmod -R 755 /app

EXPOSE 10000

# use PORT env var (Render uses PORT); default 10000
CMD ["sh", "-c", "uvicorn app:app --host 0.0.0.0 --port ${PORT:-10000}"]
