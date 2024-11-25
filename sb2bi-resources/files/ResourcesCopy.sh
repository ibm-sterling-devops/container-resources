#!/bin/bash

copyResources() {
    copyDbDrivers;
    copyAwsSdk;
}

copyDbDrivers() {
    mkdir -p ${RESOURCES_DIR_MOUNT}/dbdriver/
    cp ${RESOURCES_SRC_DIR}/dbdrivers/${DB_VENDOR,,}/*.jar ${RESOURCES_DIR_MOUNT}/dbdriver/
      
}

copyAwsSdk() {
    mkdir -p ${RESOURCES_DIR_MOUNT}/awssdk/
    cp ${RESOURCES_SRC_DIR}/awssdk/*.jar ${RESOURCES_DIR_MOUNT}/awssdk/
      
}

copyResources

RESOURCES_DIR_MOUNT=${RESOURCES_DIR_MOUNT:-/ibm/resources}
RESOURCES_SRC_DIR="${RESOURCES_SRC_DIR:-/ibm/b2bi/resources}"
