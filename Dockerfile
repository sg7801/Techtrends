FROM python:3.7
ENV FLASK_DEBUG=1
LABEL maintainer = "Srishti Guleria"
WORKDIR /app
COPY techtrends ./
EXPOSE 3111

RUN pip install -r requirements.txt
RUN python init_db.py

CMD ["python", "app.py"]
