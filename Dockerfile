# 1. Choose a base image (already has Python installed)
FROM python:3.11-slim

# 2. Set working directory inside the container
WORKDIR /app

# 3. Copy dependencies file
COPY requirements.txt .

# 4. Install dependencies
RUN pip install -r requirements.txt

# 5. Copy the rest of the application
COPY . .

# 6. Expose port used by the app
EXPOSE 5000

# 7. Command to run the app
CMD ["python", "app.py"]
