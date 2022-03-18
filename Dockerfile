FROM golang:1.15.7-buster
RUN mkdir /app
COPY . /app
WORKDIR /app
EXPOSE 8010
RUN go build 
CMD ["./main"]
