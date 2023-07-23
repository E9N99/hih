FROM E9N99/Smbot:slim-buster

RUN git clone https://github.com/E9N99/Smbot.git /root/jmrobot

WORKDIR /root/jmrobot

RUN pip3 install --no-cache-dir -r requirements.txt

ENV PATH="/home/jmrobot/bin:$PATH"

CMD ["python3","-m","jmrobot"]
