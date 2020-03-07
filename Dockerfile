FROM python:3.4-alpine
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
ENV http_proxy ''
ENV https_proxy ''
CMD ["python", "app.py"]
