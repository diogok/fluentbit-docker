# Fluentbit docker images

Some images with common fluentbit logging usage input and output.

All images include all the inputs and a single output.

It also expose metrics on port 9600.

## Input

- Syslog RFC3164, on port 9151
- Syslog RFC5424, on port 9514
- JSON over UDP (logstash compatible), on port 5432
- Fluent forward, on port 24224

## Output options

- Stdout, good for testing
- Elasticsearch
- Grafana Loki, using an intermediary HTTP-to-Loki image

## Running

Check this repository docker-compose files for each specific output.

## License

MIT

