FROM alpine
RUN apk add --update ansible
WORKDIR /app
ENTRYPOINT ["ansible"]
CMD ["--help"]
