# Use the official Python 3.9 slim image as the base image
FROM python:3.9-slim

# Set the working directory inside the container to /app
WORKDIR /app

# Copy all files from the current directory (on the host) to /app (in the container)
COPY . /app

# Install the required Python packages from the requirements.txt file
RUN pip install -r requirements.txt

# Define the default command to run when the container starts
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
