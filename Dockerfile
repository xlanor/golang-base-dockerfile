ARG DEFAULT_BASE=golang:1.16-rc-alpine3.13
FROM $DEFAULT_BASE

ENV GO111MODULE=on

RUN apk update \                                                                                                                                                                                                                        
  &&   apk add --no-cache ca-certificates wget vim curl git \                                                                                                                                                                                                      
  &&   update-ca-certificates

RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s

RUN go get github.com/gobuffalo/pop/...
RUN go install github.com/gobuffalo/pop/soda@latest