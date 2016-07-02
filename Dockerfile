FROM    ubuntu

# Install python3
RUN     apt-get update && apt-get install -y python3

WORKDIR /app
COPY index.html /app/index.html

# Run http server on port 8080
EXPOSE  8080
CMD ["python3", "-m", "http.server", "8080"]

