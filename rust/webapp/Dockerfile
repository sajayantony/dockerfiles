FROM rust as builder

WORKDIR /app
COPY ./ /app
RUN cargo build --release 

FROM  debian:jessie-slim
WORKDIR /app
COPY --from=builder /app/target/release/webapp /app/webapp
EXPOSE 8080
CMD ["/app/webapp"]