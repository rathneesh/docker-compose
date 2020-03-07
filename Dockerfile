FROM python:3.4-alpine
ADD . /code
WORKDIR /code
ENV http_proxy http://web-proxy.in.hpecorp.net:8080/
ENV https_proxy http://web-proxy.in.hpecorp.net:8080/
RUN pip install -r requirements.txt
ENV http_proxy ''
ENV https_proxy ''
CMD ["python", "app.py"]
