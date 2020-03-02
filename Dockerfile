FROM python:3.7-alpine

RUN mkdir -p /app
WORKDIR /app
COPY . .
RUN python3 oh-my-tuna.py
RUN pip install -r requirements.txt

EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["app.py"]
