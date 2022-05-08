FROM python:3.9-slim

WORKDIR /root

COPY requirements.txt requirements.txt

COPY exchange_rates exchange_rates

RUN pip install -r requirements.txt && \
    cd exchange_rates  && \
    python setup.py install && \
    cd ../

CMD python -m exchange_rates
