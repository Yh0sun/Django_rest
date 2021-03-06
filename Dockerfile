FROM python:3.8

WORKDIR /usr/src/app

COPY . .

ENV PYTHONIOENCODING=utf-8

WORKDIR ./python_django_blogapp_restframework
RUN pip install -r requirements.txt
#CMD ["python3", "manage.py", "migrate"]
#CMD ["python3", "manage.py", "runserver", "0:8000"]

CMD python3 manage.py migrate && \
python3 manage.py runserver 0:8000

EXPOSE 8000