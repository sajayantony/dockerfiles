FROM golang:stretch as build
WORKDIR /go/src/github.com/deislabs/duffle
RUN git clone https://github.com/deislabs/duffle.git /go/src/github.com/deislabs/duffle
RUN make bootstrap build
RUN make build-docker-bin

FROM docker:18 as final
COPY --from=build /go/src/github.com/deislabs/duffle/bin/duffle /usr/bin/duffle
ENTRYPOINT [ "/usr/bin/duffle" ]
#CMD [ "/bin/sh", "-c" , "/usr/bin/duffle" ]