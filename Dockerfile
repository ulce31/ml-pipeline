from alpine:3

WORKDIR /usr/app/src

RUN apk update && apk add python3 && apk add py3-pip && apk add vim

COPY . . 

RUN pip3 install -r requirements.txt

EXPOSE 5000

CMD ["python3", "./app.py"]
