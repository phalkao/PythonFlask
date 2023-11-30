# Use the official Python image as a base image
FROM python:3.10.12

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file into the container at /app
COPY . .

# Install any dependencies
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask application
EXPOSE 5000

# Command to run your application
CMD ["python3", "app.py"]