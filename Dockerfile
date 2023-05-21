# Use an appropriate base image with Python and dependencies pre-installed
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install -r requirements.txt

# Copy the entire Django project to the working directory
COPY . .

# Expose the port that Django's runserver will listen on (default is 8000)
EXPOSE 8080

# Define the command to run when the container starts
CMD ["python", "manage.py", "runserver", "0.0.0.0:8080"]
