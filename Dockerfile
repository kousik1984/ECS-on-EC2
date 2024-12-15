# Use the official Python image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy application files
COPY . /app

# Install dependencies (handle the case if requirements.txt exists)
RUN pip install --upgrade pip
RUN if [ -f "requirements.txt" ]; then pip install -r requirements.txt; fi

# Ensure app.py is executable
RUN chmod +x app.py

# Expose port 80
EXPOSE 80

# Run the application
CMD ["python", "app.py"]
