#!/bin/bash
# Update packages
sudo apt update -y
sudo apt upgrade -y

# Install Python 3 + pip
sudo apt install -y python3 python3-pip

# Install required Python packages
sudo pip3 install fastapi uvicorn sqlalchemy pydantic

# Create app directory
mkdir -p /home/ubuntu/app

# Copy application code from user data (placeholder)
# In CI/CD, your teammate will SCP or Git clone the real backend code.
# For now we create a placeholder main.py so EC2 doesn't fail.

cat << 'EOF' > /home/ubuntu/app/main.py
from fastapi import FastAPI

app = FastAPI()

@app.get("/")
def home():
    return {"message": "Backend running on EC2!"}
EOF

# Start FastAPI using Uvicorn on port 8000
nohup uvicorn main:app --host 0.0.0.0 --port 8000 &
