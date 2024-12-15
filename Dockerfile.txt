# Use the official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose port 80
EXPOSE 80

# Run the application
CMD ["python", "app.py"]
