#!/bin/bash

ddcutil getvcp 10 | awk -F "current value =   " '{ print $2 }' | awk -F "," '{ print $1 }'
