# Use an official Python runtime as the base image
FROM python:3.9-alpine

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt /app

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt
Run pip install pytest

# Copy the application code into the container at /app
COPY app /app/app
COPY tests/ app/tests/

# Expose the port that the app will run on
EXPOSE 5000

# Define the command to run the application
CMD [ "python", "app/app.py" ]
