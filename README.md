This is the beginnings of a certificate transparency log
client written in Go, along with a log scanner tool.

You'll need go v1.8 or higher to compile.

# Installation

This go code must be imported into your go workspace before you can
use it, which can be done with:

```bash
go get github.com/google/certificate-transparency-go/client
go get github.com/google/certificate-transparency-go/scanner
# etc.
```

# Building the binaries

You need extra libraries:

```bash
go get github.com/lib/pq
```

To compile the log scanner run:

```bash
go build github.com/google/certificate-transparency-go/scanner/scanlog/scanlog.go
```

# PostgreSQL

The custom scanner requires a PostgreSQL instance running on port 7777. To create the required tables run:

```bash
scanner/initialize_db.sh
```

# Multiple log download

To download certs from all logs in `scanner/logs.latest.csv` in batches run:

```bash
chmod +x scanner/starter.sh
scanner/starter.sh
```

# Contributing

When sending pull requests, please ensure that everything's been run
through ```gofmt``` beforehand so we can keep everything nice and
tidy.
