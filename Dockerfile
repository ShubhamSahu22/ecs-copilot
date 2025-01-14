# Use the official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy application code and tests
COPY . .

# Expose the port for FastAPI app
EXPOSE 8000

# Default command to start the app
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8000"]
