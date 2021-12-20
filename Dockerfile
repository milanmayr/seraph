FROM golang:1.17.5-alpine

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY *.go ./

EXPOSE 8080 8000 5050 5432 80

CMD ["go", "run", "index.go"]