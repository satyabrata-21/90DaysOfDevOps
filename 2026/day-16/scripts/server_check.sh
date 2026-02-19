 #!/bin/bash
 

 #!/bin/bash

service="nginx"

read -p "Do you want to check the status? (y/n): " choice

if [ "$choice" = "y" ]; then
    echo "Checking status of $service..."

    sudo systemctl status "$service"

    if systemctl is-active --quiet "$service"; then
        echo "Result: $service is Active"
    else
        echo "Result: $service is Not Active"
    fi

elif [ "$choice" = "n" ]; then
    echo "Skipped"

else
    echo "Invalid input: please enter y or n"
fi

