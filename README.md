
## Features:

- This project is an end-to-end audio classification system built with a deep ResNet-style CNN that converts audio into Mel Spectrograms for image-based sound recognition. It features advanced training techniques like Mixup augmentation, Frequency Masking, AdamW optimization, and OneCycleLR scheduling, all backed by TensorBoard for performance monitoring. The trained model is deployed as a serverless GPU-powered FastAPI endpoint via Modal with a sleek Next.js dashboard built using Tailwind CSS and Shadcn UI offering real-time classification, confidence scores, waveform and spectrogram visualization, and CNN feature map inspection.

## Setup

Follow these steps to install and set up the project.

### Install Python

Download and install Python if not already installed. Use the link below for guidance on installation:
[Python Download](https://www.python.org/downloads/)

Create a virtual environment with **Python 3.12**.

### Backend

Navigate to folder:

```bash
cd audio-cnn
```

Install dependencies:

```bash
pip install -r requirements.txt
```

Modal setup:

```bash
modal setup
```

Run on Modal:

```bash
modal run main.py
```

Deploy backend:

```bash
modal deploy main.py
```

### Frontend

Install dependencies:

```bash
cd audio-cnn-visualisation
npm i
```

Run:

```bash
npm run dev
```
