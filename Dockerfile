ARG DEFAULT_BASE=golang:1.16-rc-alpine3.13
FROM $DEFAULT_BASE

WORKDIR /tmp

RUN apk update \                                                                                                                                                                                                                        
  &&   apk add --no-cache ca-certificates wget vim curl git \                                                                                                                                                                                                      
  &&   update-ca-certificates

RUN curl -sSfL https://raw.githubusercontent.com/cosmtrek/air/master/install.sh | sh -s

RUN wget https://github.com/gobuffalo/pop/releases/download/v5.3.3/pop_5.3.3_linux_amd64.tar.gz \
  && tar xvzf pop_5.3.3_linux_amd64.tar.gz \
  && mv /tmp/pop_5.3.3_linux_amd64/soda /usr/local/bin