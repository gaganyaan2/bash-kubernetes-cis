#!/bin/bash
export rundate="$(date +%d-%m-%Y-%s)"
export cis_logfile="kubernetes_cis_$rundate.log"
export output="result_$rundate.csv"