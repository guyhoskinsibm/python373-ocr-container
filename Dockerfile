FROM python:3.7.3-alpine3.10@sha256:3b1f64932d61bebdd223e9bf64f92a8ed8fccd54b0177c7bc57c348fec6f9659
RUN apk update -y 
RUN apk add -y tesseract-ocr 

RUN groupadd -g 999 python && \
    useradd -r -u 999 -g python python
USER 999

WORKDIR /usr/app

COPY requirements.txt .
RUN pip install -r requirments.txt

COPY run.py .
