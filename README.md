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
