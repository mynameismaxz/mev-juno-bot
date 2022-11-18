FROM python:3.10.8-buster

# Copy the current directory contents into the container at /app
WORKDIR /app
COPY ./juno-arb .
RUN pip install -r requirements.txt

ENTRYPOINT [ "python", "-u", "main.py" ]
