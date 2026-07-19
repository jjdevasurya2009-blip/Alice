FROM nikolaik/python-nodejs:python3.10-nodejs19


RUN apt-get clean && apt-get update --fix-missing && apt-get install -y --no-install-recommends ffmpeg


COPY . /app/
WORKDIR /app/
RUN pip3 install --no-cache-dir -U -r requirements.txt

CMD ["bash", "start"]

