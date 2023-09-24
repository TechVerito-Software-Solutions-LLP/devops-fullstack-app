# Use an official Golang runtime as a parent image
FROM golang:1.19

# Set the working directory in the container to /app
WORKDIR /app

# Copy the Go module files and download dependencies
COPY go.mod go.sum ./

RUN go mod download

# Copy the rest of the backend source code to the working directory
COPY . ./

RUN go get ./...

# Build the Go application
RUN go build -o main .

# Expose port 8080 for the backend application
EXPOSE 8080
