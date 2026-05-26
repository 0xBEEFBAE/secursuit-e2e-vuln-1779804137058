module github.com/0xBEEFBAE/secursuit-e2e-vuln

go 1.22

require (
  // GO-2023-1751 — gin information disclosure
  github.com/gin-gonic/gin v1.6.0
  // CVE-2023-32731 — grpc/grpc-go DoS
  google.golang.org/grpc v1.51.0
  // CVE-2023-39325 — net/http2 rapid reset DoS (via vulnerable golang.org/x/net pinned)
  golang.org/x/net v0.16.0
)
