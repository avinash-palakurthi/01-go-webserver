# Use an official Golang runtime as a parent image
FROM golang:1.23.3

# Set the working directory in the container
WORKDIR /app

# Copy the Go source code to the container
COPY main.go .

# Copy the static folder to the container
COPY static ./static

# Build the Go app
RUN go build -o app main.go

# Expose the port the app runs on
EXPOSE 8080

# Command to run the executable
CMD ["./app"]
