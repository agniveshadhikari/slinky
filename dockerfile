FROM tiangolo/uwsgi-nginx-flask:python3.8

COPY ./requirements.txt /app/requirements.txt

RUN apt install libpq-dev
RUN pip install --no-cache-dir --upgrade -r /app/requirements.txt

COPY ./app /app