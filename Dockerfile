FROM python:3.7-slim

# copy local code to container image
WORKDIR /app
COPY . /app
RUN pip install Flask numpy pandas pickle-mixin flasgger sklearn

EXPOSE 5001
ENTRYPOINT ["python3"]

CMD ["flask_api.py"]