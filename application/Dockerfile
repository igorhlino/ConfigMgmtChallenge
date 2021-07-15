# Start from the latest golang base image
FROM golang:1.12.0-alpine3.9

# Set the Current Working Directory inside the container
WORKDIR /application

# Copy files
COPY *.go .

# Build the Go app
RUN go build -o main .

# Expose port 8080 to the outside world
EXPOSE 80
# Command to run the executable
CMD ["./main"]
