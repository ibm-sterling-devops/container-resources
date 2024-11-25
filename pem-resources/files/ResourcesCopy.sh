#!/bin/bash

copyResources() {
    copyDbDrivers;
}

copyDbDrivers() {
    mkdir -p ${RESOURCES_DIR_MOUNT}/dbdriver/
    cp ${RESOURCES_SRC_DIR}/dbdrivers/${DB_VENDOR,,}/*.jar ${RESOURCES_DIR_MOUNT}/dbdriver/
      
}

copyResources

RESOURCES_DIR_MOUNT=${RESOURCES_DIR_MOUNT:-/ibm/resources}
RESOURCES_SRC_DIR="${RESOURCES_SRC_DIR:-/ibm/pem/resources}"

