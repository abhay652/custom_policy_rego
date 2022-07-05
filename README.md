https://github.com/kunchalavikram1427/YouTube_Series/blob/main/Kubernetes/ClusterSetup/minikube-on-aws.md





curl -H 'Authorization: Bearer 0J65pAaXs46mL1AHnfkFC7PNoxG-7jsdGcxgReFFpMf1PP_YfDM6E4ojSpoQRJ4VAT4jW9eN1D2Rdv4N0vNi-KD_vVxxR3e2CIdkIA' 'https://lznyt9.svc.styra.com/v1/systems/c74f19513f174a8e824ef85ad9fcc8aa/assets/opaservice_k8s.yaml' | kubectl apply -f -


api token custom 
dBkQTKz2nGt9QXeu--enmxD2TA__uc7LHwUCMGg

System ID: f0f8d0cb5f514373ab70b0e9dc92d165

https://lznyt9.svc.styra.com/systems/f0f8d0cb5f514373ab70b0e9dc92d165/settings/general


opa-conf.yaml

discovery:
  name: discovery
  prefix: /systems/SYSTEMID
labels:
  policy-type: custom/rules
  system-id: f0f8d0cb5f514373ab70b0e9dc92d165
  system-type: custom
services:
- credentials:
    bearer:
      token: qZ3tbxfLD_ziziChMQGCPVd3rzV6lnpSQ4SExMUJuGsCnw
  name: styra
  url: https://lznyt9.svc.styra.com/systems/f0f8d0cb5f514373ab70b0e9dc92d165



# Download OPA for macOS

curl -L -o opa https://github.com/open-policy-agent/opa/releases/latest/download/opa_darwin_amd64 && chmod 755 opa
# Or download OPA for Linux

curl -L -o opa https://github.com/open-policy-agent/opa/releases/latest/download/opa_linux_amd64 && chmod 755 opa
# Download Styra configuration for OPA

curl -H 'Authorization: Bearer eEobCp373pEHQgnN_Qk0h3BE-v_bWCXM2K8SPjYhI1zKSZtOEfD9iXI8ALZfAp2o8czOl5cCX-95AADfJxVpROtitrLPh8I' -o opa-conf.yaml 'https://lznyt9.svc.styra.com/v1/systems/f0f8d0cb5f514373ab70b0e9dc92d165/assets/opa-config'
# Run OPA with Styra configuration

opa run --server --config-file=opa-conf.yaml
# Verify that OPA is running and accepting requests

curl 'localhost:8181/health?bundle=true'
# Update Styra datasource

curl -X PUT -H 'Content-Type: application/json' -H 'Authorization: Bearer 6unicM426yH2yivoNVQLldorAcSsfkwKR0kIXm4qRjuU_rROueH6B7S1PhaBh2EhQfoLZNYiomWkRVt_YQ8vNYlKxm-4nNv8_dc' 'https://lznyt9.svc.styra.com/v1/data/systems/f0f8d0cb5f514373ab70b0e9dc92d165/dataset' -d '{"key": "value"}'


docker compose  script 

curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
