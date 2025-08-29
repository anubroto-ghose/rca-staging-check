# Use a lightweight Python base image
FROM python:3.11-slim-buster

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install dependencies
# This step is often done separately for better Docker layer caching
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code into the container
COPY . .

# Expose the port your FastAPI application listens on
EXPOSE 8000

# Command to run the FastAPI application using Uvicorn
# The --host 0.0.0.0 is crucial for accessing the app from outside the container
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "8080"]
