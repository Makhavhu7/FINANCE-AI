#Use an official base image

FROM ubuntu:22.04

#Install system dependencies

RUN apt-get update && apt-get install -y 
#python3 
#python3-pip 
#gcc 
#&& rm -rf /var/lib/apt/lists/*

#Set working directory

WORKDIR /app

#Copy only necessary files

COPY requirements.txt . COPY src/ src/ COPY assets/ assets/ COPY demo/ demo/ COPY docs/ docs/

#Install Python dependencies

RUN pip3 install --no-cache-dir -r requirements.txt

#Expose the port the app runs on

EXPOSE 8000

#Default command to run the FastAPI app

CMD ["uvicorn", "src.app:app", "--host", "0.0.0.0", "--port", "8000"]