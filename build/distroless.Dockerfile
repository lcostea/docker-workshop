FROM openpolicyagent/conftest:v0.22.0 as conftest

FROM gcr.io/distroless/base-debian10

LABEL MAINTAINER "Liviu Costea email.lcostea@gmail.com"

COPY --from=conftest /conftest / 

ENTRYPOINT ["/conftest"]
CMD ["--help"]