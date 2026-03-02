# Use Node base image
FROM node:20

# Install Python
RUN apt-get update && apt-get install -y python3 python3-pip

# Set working directory
WORKDIR /app

# Copy frontend package files
COPY audio-cnn-visualisation/package*.json ./frontend/

# Install frontend dependencies
WORKDIR /app/frontend
RUN npm install

# Copy full frontend source
COPY audio-cnn-visualisation/ .

# Build Next.js
RUN npm run build

# Go back to root app folder
WORKDIR /app

# Copy backend files
COPY requirements.txt .
RUN pip3 install --break-system-packages -r requirements.txt

COPY main.py .
COPY model.py .
COPY train.py .

# Expose Hugging Face required port
EXPOSE 7860

# Start backend + frontend
CMD python3 main.py & npm start --prefix frontend -- -p 7860