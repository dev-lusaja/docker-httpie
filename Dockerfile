FROM alpine:3.6

MAINTAINER Oscar Sanchez - Dev Lusaja <janoone52@gmail.com>

RUN apk add --update python py-pip
RUN pip install --upgrade https://github.com/jakubroztocil/httpie/archive/master.tar.gz

ENTRYPOINT [ "http" ]