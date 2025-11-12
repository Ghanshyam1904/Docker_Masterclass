# Use the official python runtime as a parent image
FROM python:3.8-slim 

# Set the working Direcrtory to the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip Install --no-cache-dir -r requirements.txt

# Make port 5000 available on the world outside this container
EXPOSE 5000

# Define Environmental Variable
ENV FLASK_APP=app.py

# Run the flask app
CMD ["flask","run","--host=0.0.0.0"]
