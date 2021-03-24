FROM python:latest

RUN apt-get update
RUN apt-get install libgl1-mesa-glx -y

COPY rpl.png /graffiti/
COPY Drawer.py /graffiti/
COPY settings.ini /graffiti/
COPY requirements.txt /graffiti/
RUN pip install --no-cache-dir -r /graffiti/requirements.txt

ENTRYPOINT ["python", "/graffiti/Drawer.py", "--settings-file", "/graffiti/settings.ini"]