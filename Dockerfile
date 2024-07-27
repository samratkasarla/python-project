FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file (if you have one) and install dependencies
# In this case, we directly copy app.py and install Flask
COPY app.py .
COPY requirements.txt .
COPY templates/ templates/

# Install Flask and any other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the Flask app
EXPOSE 5000

# Define the command to run the application
CMD ["python", "app.py"]

