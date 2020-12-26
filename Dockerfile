FROM python:3.8

WORKDIR /system

COPY . .

RUN pip3 install scikit-learn

CMD ["python3", "./src/system.py"]

