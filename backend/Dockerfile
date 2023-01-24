FROM python:3.10

EXPOSE 8000

COPY requirements.txt requirements.txt
RUN pip install --no-cache-dir -r requirements.txt
COPY entrypoint.sh /usr/local/bin
RUN chmod +x /usr/local/bin/entrypoint.sh && ln -s /usr/local/bin/docker-entrypoint.sh /

COPY . /backend
WORKDIR /backend

ENTRYPOINT ["entrypoint.sh"] 
