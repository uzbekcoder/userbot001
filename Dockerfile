FROM baalajimaestro/userbot_python:latest

ENV PATH="/app/bin:$PATH"
WORKDIR /app

RUN git clone https://github.com/Ruslan16022/AyeBot -b dev/reignz /app

#
# Copies session and config(if it exists)
#
COPY ./userbot.session ./config.env* ./client_secrets.json* ./secret.json* /app/

#
# Finalization
#
CMD ["bash","init/start.sh"]
