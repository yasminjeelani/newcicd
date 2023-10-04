# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container to /app
WORKDIR /app

# Add the current directory contents into the container at /app
ADD . /app

# Install any needed packages specified in requirements.txt
RUN pip install --upgrade pip \
    && pip install MarkupSafe==2.0.1 \
    && pip install -r requirements.txt

# Expose the port that the app will run on
EXPOSE 5000

# Define the command to run the application
CMD [ "python", "app.py" ]
