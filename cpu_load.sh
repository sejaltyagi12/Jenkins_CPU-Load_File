#!/bin/bash

simulate_cpu_load() {
    local duration=$1
    echo "Simulating CPU load for $duration seconds..."

    local end=$((SECONDS + duration))

    while [ $SECONDS -lt $end ]
    do
        :                       #: is a no-op command that does nothing but consumes CPU resources
    done
    
    echo "CPU load simulation completed."
}

simulate_cpu_load 60

echo "Subject: CPU Usage Increased by 50%
To: kuldeep.rawat@wittybrains.com, vikrant.mehrol@wittybrains.com, niranjan.bhardwaj@wittybrains.com, sejal.tyagi@wittybrains.com
The CPU usage has been increased by 50%. Please close the process as needed." | sendmail -t

echo "Mail sent to admins."