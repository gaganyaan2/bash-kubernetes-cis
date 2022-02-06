#!/bin/bash

run(){

    c_number="1.1.1"
    c_name="Ensure that the API server pod specification file permissions are set to 644 or more restrictive (Automated)"
    if [ "$(stat -c %a /etc/kubernetes/manifests/kube-apiserver.yaml)" -lt "644" ]
    then
        sh parser.sh "PASS" "$c_number" "$c_name"
    else
        sh parser.sh "FAIL" "$c_number" "$c_name"
    fi

    c_number="1.1.2"
    c_name="Ensure that the API server pod specification file ownership is set to root:root (Automated)"
    if [ "$(stat -c %U:%G /etc/kubernetes/manifests/kube-apiserver.yaml)" == "root:root" ]
    then
        sh parser.sh "PASS" "$c_number" "$c_name"
    else
        sh parser.sh "FAIL" "$c_number" "$c_name"
    fi

    c_number="1.1.3"
    c_name="Ensure that the controller manager pod specification file permissions are set to 644 or more restrictive (Automated)"
    if [ "$(stat -c %a /etc/kubernetes/manifests/kube-controller-manager.yaml)" -lt "644" ]
    then
        sh parser.sh "PASS" "$c_number" "$c_name"
    else
        sh parser.sh "FAIL" "$c_number" "$c_name"
    fi

    c_number="1.1.4"
    c_name="Ensure that the controller manager pod specification file ownership is set to root:root (Automated)"
    if [ "$(stat -c %U:%G /etc/kubernetes/manifests/kube-controller-manager.yaml)" == "root:root" ]
    then
        sh parser.sh "PASS" "$c_number" "$c_name"
    else
        sh parser.sh "FAIL" "$c_number" "$c_name"
    fi
}

run