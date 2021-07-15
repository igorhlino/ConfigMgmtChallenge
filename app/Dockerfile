# Version of GO to use
FROM golang:1.15.7-buster 
#Dir to work
WORKDIR /app
# Copy files
COPY *.go .
#Named the imagee and compile
RUN go run main.go
EXPOSE 8080
