FROM python:3.9
USER root

WORKDIR /workdir

COPY requirements.txt /workdir/
RUN pip install --upgrade pip
RUN pip install --upgrade setuptools

# RUN pip install --no-cache-dir -r /workdir/requirements.txt
RUN pip install -r /workdir/requirements.txt

RUN pip freeze > requirements.txt

EXPOSE 8888
