#!/bin/bash
# Daniel

export ANSIBLE_HOST_KEY_CHECKING="False"
export ANSIBLE_SSH_PIPELINING="True"
export OS_DEPLOYMENT_TYPE="origin"

export NODE_NUM=2
export CLUSTER_NAME="danield"

export libvirt_network='openshift'
export libvirt_storage_pool='openshift-ansible'
export libvirt_storage_pool_path='/oopool/openshift'

export is_containerized='False'

bin/cluster -v -v -v create libvirt \
    --deployment-type='origin' \
    -n ${NODE_NUM} \
    -o libvirt_network='openshift' \
    -o libvirt_storage_pool='openshift-ansible' \
    -o libvirt_storage_pool_path='/oopool/openshift' \
    ${CLUSTER_NAME}

