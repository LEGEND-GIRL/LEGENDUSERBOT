FROM LEGEND-GIRL/LEGENDBOT:slim-buster

#clonning repo 
RUN git clone https://github.com/LEGEND-GIRL/LEGENDBOT.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN pip3 install --no-cache-dir requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
