# Base image
FROM python:3.8

# Set working directory
WORKDIR /app

# Copy files
COPY main.py /app
COPY requirements.txt /app
# COPY model /app/model
# COPY ms /app/ms

# Install dependencies
RUN pip install -r requirements.txt

# Run the application
EXPOSE 80
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
