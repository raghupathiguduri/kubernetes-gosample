FROM golang:latest 
RUN mkdir /app 
ADD . /app/ 
WORKDIR /app
ENV CGO_ENABLED 0
RUN go mod init
RUN go build -o main . 
CMD ["/app/main"]
