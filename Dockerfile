# Import the python module
FROM python:3.8-slim
 
# Set the working directory
WORKDIR /flaskapp
 
# Copy the source python file to my current working directory.
COPY flaskapp.py .
 
# Run command to ensure the Flask framework is present in the container.
RUN pip3 install Flask
 
# Expose port 80 for the application
EXPOSE 80
CMD ["python", "flaskapp.py"]
