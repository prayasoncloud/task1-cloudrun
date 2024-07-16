# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . .

# Install Flask and dependencies
RUN pip install --no-cache-dir flask

# Expose the port on which the Flask app runs
EXPOSE 8080

# Command to run the Flask application
CMD ["python", "app.py"]
