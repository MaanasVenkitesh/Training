#!/bin/sh

echo "System Information"
echo "__________________"
echo "Current User: $(whoami)"
echo "Machine Name: $(hostname)"
echo "Operating System: $(uname -s)"
echo "CPU cores: $(lscpu | grep '^CPU(s):' | awk '{print $2}')"
echo "Total RAM: $(free -h | grep '^Mem:' | awk '{print $2}')"
echo "Used RAM: $(free -h | grep '^Mem:' | awk '{print $3}')"
echo "Available RAM: $(free -h | grep '^Mem:' | awk '{print $4}')"