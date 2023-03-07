FROM python:3.7.3-alpine3.10@sha256:3b1f64932d61bebdd223e9bf64f92a8ed8fccd54b0177c7bc57c348fec6f9659 as build
RUN apk update
RUN apk upgrade
RUN apk add tesseract-ocr 

WORKDIR /usr/app
RUN python -m venv /usr/app/venv
ENV PATH="/usr/app/venv/bin:$PATH"

RUN pip install --upgrade pip
COPY requirements.txt .
RUN pip install -r requirments.txt

FROM python:3.7.3-alpine3.10@sha256:3b1f64932d61bebdd223e9bf64f92a8ed8fccd54b0177c7bc57c348fec6f9659

RUN addgroup -g 1001 python && \
    adduser -S -u 1001 -g python python
USER 1001

COPY --from=build /usr/app/venv ./venv
COPY run.py .

ENV PATH="/usr/app/venv/bin:$PATH"
CMD ["python","run.py"]
