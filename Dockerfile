FROM harshpreets63/random:simple

WORKDIR /usr/src/app

COPY . .

RUN pip3 install -r requirements.txt

CMD gunicorn app:app & python3 bot.py
