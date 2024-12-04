#!/bin/bash

copyResources() {
    copyDbDrivers;
}

copyDbDrivers() {
    echo "Create Directories"
    mkdir -p $RESOURCES_DIR_MOUNT/dbdrivers
    mkdir -p $RESOURCES_DIR_MOUNT/pcm
    mkdir -p $RESOURCES_DIR_MOUNT/wmq
    mkdir -p $RESOURCES_DIR_MOUNT/sso
    mkdir -p $RESOURCES_DIR_MOUNT/ssomigrator

    echo "Copy DB Drivers"
    cp ${RESOURCES_SRC_DIR}/dbdrivers/${DB_VENDOR,,}/*.jar ${RESOURCES_DIR_MOUNT}/dbdrivers/
    cp ${RESOURCES_SRC_DIR}/dbdrivers/${DB_VENDOR,,}/*.jar ${RESOURCES_DIR_MOUNT}/pcm/

}

echo "DB_VENDOR=$DB_VENDOR"
echo "RESOURCES_SRC_DIR=$RESOURCES_SRC_DIR"
echo "RESOURCES_DIR_MOUNT=$RESOURCES_DIR_MOUNT"

copyResources

tail -f /dev/null
