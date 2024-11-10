FROM python:3.9-slim

WORKDIR /app

COPY . /app

RUN pip install --no-cache-dir -r requirments.txt

EXPOSE 80

ENTRYPOINT ["uvicorn","model_app:app","--host","0.0.0.0","--port","80"]

