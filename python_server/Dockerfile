# Use a slim version of Python for a smaller image size
FROM python:3.11-slim

WORKDIR /app

# Copy and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the app code
COPY app.py .

# The port the app runs on
EXPOSE 1111

CMD ["python", "app.py"]