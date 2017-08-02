#
# Docker image for the EPICS Archiver Appliance database.
#
# Gustavo Ciotto Pinton
# Controls Group - Brazilian Synchrotron Light Source Laboratory - LNLS
#

FROM mysql:latest

MAINTAINER Gustavo Ciotto

# The only operation we should do is to copy the initialization script
# to the folder mentioned in the documentation
COPY sql/ /docker-entrypoint-initdb.d/
