# use official Goland image
FROM golang:1.16.3-alpine3.13

# set working directory
WORKDIR /app

# copy the source code
COPY . .

# Download and install the dependencies
RUN go get -d -v ./...

# Build the go app
RUN go build -o api .

# EXPOSE 8080 the port
EXPOSE 8080

# Run the executable
CMD ["./api"]