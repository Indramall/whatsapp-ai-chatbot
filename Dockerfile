# Use Python 3.9 as the base image
FROM python:3.9

# Set the working directory
WORKDIR /app

# Copy the project files
COPY . /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the application port
EXPOSE 5000

# Set environment variables (modify if needed)
ENV OPENAI_API_KEY="your-api-key-here"

# Run the application with Gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]
