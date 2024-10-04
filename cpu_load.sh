#!/bin/bash

echo "Starting CPU load simulation"

# Start CPU load simulation in the background
for i in {1..50}
do
    ( while true; do :; done ) &
done


# #!/bin/bash

# # Function to simulate CPU load
# load_cpu() {
#     # This loop performs a simple computation
#     for ((i = 1; i <= 100000000; i++)); do
#         # Just doing some math to keep the CPU busy
#         echo "$i * 1" > /dev/null
#     done
# }

# # Start a number of processes to increase CPU load
# # Here we just start 2 instances to increase the load
# for ((j = 0; j < 2; j++)); do
#     load_cpu &
# done

# echo "Increased CPU load. Press Enter to stop the load..."

# # Wait for user to terminate the script
# read
# kill $(jobs -p) 2>/dev/null
# wait
# echo "CPU load stopped."


# #!/bin/bash

# simulate_cpu_load() {
#     local duration=$1
#     echo "Simulating CPU load for $duration seconds..."

#     local end=$((SECONDS + duration))

#     while [ $SECONDS -lt $end ]
#     do
#         :                       #: is a no-op command that does nothing but consumes CPU resources
#     done
    
#     echo "CPU load simulation completed."
# }

# simulate_cpu_load 60

# echo "Subject: CPU Usage Increased by 50%
# To: kuldeep.rawat@wittybrains.com, vikrant.mehrol@wittybrains.com, niranjan.bhardwaj@wittybrains.com, sejal.tyagi@wittybrains.com
# The CPU usage has been increased by 50%. Please close the process as needed." | sendmail -t

# echo "Mail sent to admins."

