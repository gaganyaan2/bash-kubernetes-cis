#!/bin/bash

. ./env.sh

echo "Running 1.Control Plane Components cis module..."
sh 1.sh

echo "Running 2.etcd cis module..."
sh 2.sh

echo "Running 3.Control Plane Configuration cis module..."
sh 3.sh

echo "Running 4.Worker Nodes cis module..."
sh 4.sh

echo "Running 5.Policies cis module..."
sh 5.sh
