#!/bin/bash
export rundate="$(date +%d-%m-%Y-%s)"
export cis_logfile="kubernetes_cis_$rundate.log"
export output="result_$rundate.csv"

#color variable
export red=`tput setaf 1`
export green=`tput setaf 2`
export reset=`tput sgr0`