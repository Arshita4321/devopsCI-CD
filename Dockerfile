# Use official Python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# Copy dependencies
COPY requirements.txt .

# Install dependencies
RUN pip install --no-cache-dir -r requirement.txt

# Copy app code
COPY app.py .

# Default command
CMD ["python", "app.py"]