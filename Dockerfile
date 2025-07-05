FROM golang:alpine

RUN apk update && apk add --no-cache git
RUN git clone https://github.com/cybruGhost/Stock-market .Stock-market
RUN cd stockmarket && \
    go build ./cmdStock-market && \
    chmod a+x .Stock-market
WORKDIR /goStock-market/
CMD [".Stock-market"]
