FROM openpolicyagent/conftest:v0.22.0 as conftest

FROM alpine:3.12.1

LABEL MAINTAINER "Liviu Costea email.lcostea@gmail.com"

COPY --from=conftest /conftest / 
ENV BINARY=conftest

ENTRYPOINT ["/conftest"]
CMD ["--help"]