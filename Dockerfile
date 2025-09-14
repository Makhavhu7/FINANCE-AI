# Use an official base image
FROM ubuntu:22.04

# Install system dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    gcc \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy only necessary files
COPY src/ src/
COPY assets/ assets/
COPY demo/ demo/
COPY docs/ docs/

# Install Python dependencies directly
RUN pip3 install --no-cache-dir \
    fastapi==0.68.0 \
    uvicorn==0.15.0 \
    scikit-learn==1.0.2 \
    python-multipart==0.0.5

# Expose the port the app runs on
EXPOSE 8000

# Default command to run the FastAPI app
CMD ["uvicorn", "src.app:app", "--host", "0.0.0.0", "--port", "8000"]