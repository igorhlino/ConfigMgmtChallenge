
# Version of GO to use
FROM golang:latest
#Dir to work
WORKDIR /app
# Copy files
COPY *.go .
#Named the imagee and compile
RUN go build -o main .
EXPOSE 8080
# Command to run the executable
CMD ["./main"]
