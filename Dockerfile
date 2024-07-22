FROM alpine:3.14

# Install required packages
RUN apk add --no-cache android-tools bash

# Copy the entrypoint script
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

# Set a default value for ADB_DEVICE
ENV ADB_DEVICE=192.168.1.100:5555

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
