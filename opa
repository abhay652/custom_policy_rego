# Download OPA for macOS

curl -L -o opa https://github.com/open-policy-agent/opa/releases/latest/download/opa_darwin_amd64 && chmod 755 opa
# Or download OPA for Linux

curl -L -o opa https://github.com/open-policy-agent/opa/releases/latest/download/opa_linux_amd64 && chmod 755 opa
# Download Styra configuration for OPA

curl -H 'Authorization: Bearer Z4edcsnnlQ7aMSWBoZnBBnZUK79A0JXS47NUEVtIKj-uJV70TpHcXrWPE2pmTLrXto-ZEdy1k8QF5RWdWNc1booxfj6i5Ic' -o opa-conf.yaml 'https://lznyt9.svc.styra.com/v1/systems/dd741a48d2284f728cf6e7283b6aee27/assets/opa-config'
# Run OPA with Styra configuration

opa run --server --config-file=opa-conf.yaml
# Verify that OPA is running and accepting requests

curl 'localhost:8181/health?bundle=true'
# Update Styra datasource

curl -X PUT -H 'Content-Type: application/json' -H 'Authorization: Bearer G5lvIenDpdCNZddK11ipHk1TLKIS4_EHqe8aOYQ4qFjlP01Xx7h0fgooge370pysH4nmQnboSsTfaqQQqhmf4zr4i54bcIwZmtQ' 'https://lznyt9.svc.styra.com/v1/data/systems/dd741a48d2284f728cf6e7283b6aee27/dataset' -d '{"key": "value"}'
