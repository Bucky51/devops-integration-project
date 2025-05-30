# Use official Python runtime as a parent image
FROM python:3.9-slim

# Set working directory
WORKDIR /Myapp

# Copy current directory contents into the container at /app
COPY . /app

# Install dependencies
RUN pip install --no-cache-dir -r Myapp/requirements.txt

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
