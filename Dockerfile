ARG DEFAULT_BASE=golang:1.16-rc-alpine3.13
FROM $DEFAULT_BASE

WORKDIR /build

RUN apk update \                                                                                                                                                                                                                        
  &&   apk add --no-cache ca-certificates wget vim curl git postgresql-client make gcc libtool musl-dev \                                                                                                                                                                                                      
  &&   update-ca-certificates

RUN curl -fLo install.sh https://raw.githubusercontent.com/cosmtrek/air/master/install.sh \
    && chmod +x install.sh \
    && sh install.sh \
    && cp ./bin/air /bin/air

RUN go mod init build-repo \
  && go get -u -v -tags sqlite github.com/gobuffalo/pop/... \
  && go install -tags sqlite github.com/gobuffalo/pop/soda

RUN rm -rf /build