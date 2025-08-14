FROM python:3.9-slim

WORKDIR /workspace/llvd

RUN pip install --upgrade pip setuptools

COPY ./ ./

RUN python setup.py install

WORKDIR /courses

ENTRYPOINT ["llvd"]

CMD ["--help"]