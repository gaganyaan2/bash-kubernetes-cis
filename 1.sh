#!/bin/bash

run(){

    module_1_1_1="1.1.1 Ensure that the API server pod specification file permissions are set to 644 or more restrictive (Automated)"
    if [ "$(stat -c %a /etc/kubernetes/manifests/kube-apiserver.yaml)" -lt "644" ]
    then
        echo "PASS,$module_1_1_1" | tee -a $output
    else
        echo "FAIL,$module_1_1_1" | tee -a $output
    fi

    module_1_1_2="1.1.2 Ensure that the API server pod specification file ownership is set to root:root (Automated)"
    if [ "$(stat -c %U:%G /etc/kubernetes/manifests/kube-apiserver.yaml)" == "root:root" ]
    then
        echo "PASS,$module_1_1_2" | tee -a $output
    else
        echo "PASS,$module_1_1_2" | tee -a $output
    fi
}

run