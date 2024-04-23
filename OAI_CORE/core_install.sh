docker pull mysql:5.7
docker pull ubuntu:bionic
docker pull oaisoftwarealliance/oai-amf:v1.5.1
docker pull oaisoftwarealliance/oai-nrf:v1.5.1
docker pull oaisoftwarealliance/oai-smf:v1.5.1
docker pull oaisoftwarealliance/oai-spgwu-tiny:v1.5.1
docker pull oaisoftwarealliance/oai-ausf:v1.5.1
docker pull oaisoftwarealliance/oai-udm:v1.5.1
docker pull oaisoftwarealliance/oai-udr:v1.5.1
docker pull oaisoftwarealliance/trf-gen-cn5g:latest

#Re-tag the images
docker image tag oaisoftwarealliance/oai-amf:v1.5.1 oai-amf:develop
docker image tag oaisoftwarealliance/oai-nrf:v1.5.1 oai-nrf:develop
docker image tag oaisoftwarealliance/oai-smf:v1.5.1 oai-smf:develop
docker image tag oaisoftwarealliance/oai-spgwu-tiny:v1.5.1 oai-spgwu-tiny:develop
docker image tag oaisoftwarealliance/oai-ausf:v1.5.1 oai-ausf:develop
docker image tag oaisoftwarealliance/oai-udm:v1.5.1 oai-udm:develop
docker image tag oaisoftwarealliance/oai-udr:v1.5.1 oai-udr:develop
docker image tag oaisoftwarealliance/trf-gen-cn5g:latest trf-gen-cn5g:latest
