# ADB Logcat Docker Image

This Docker image allows you to easily stream logcat output from an Android device using ADB (Android Debug Bridge). It's designed to automatically connect to a specified device and continuously stream its logcat, even if the connection is lost temporarily.

## Features

- Lightweight Alpine-based image
- Automatic connection and reconnection to ADB devices
- Continuous streaming of logcat output
- Easily configurable via environment variables

## Prerequisites

- Docker installed on your host machine
- An Android device with USB debugging enabled
- The Android device must be on the same network as the Docker host (for TCP/IP debugging)

## Usage

1. Build the Docker image:

   ```
   docker build -t adb-logcat-alpine .
   ```

2. Run the container, specifying your Android device's IP and port:

   ```
   docker run -e ADB_DEVICE=192.168.1.100:5555 adb-logcat-alpine
   ```

   Replace `192.168.1.100:5555` with your device's actual IP address and port.

## Configuration

The image uses the following environment variable:

- `ADB_DEVICE`: The IP address and port of your Android device (default: 192.168.1.100:5555)

## Troubleshooting

1. Ensure that USB debugging is enabled on your Android device.
2. Make sure your Android device is on the same network as the Docker host.
3. If you're having trouble connecting, try restarting the ADB server on your host machine:

   ```
   adb kill-server
   adb start-server
   ```

4. Verify that you can connect to the device from your host machine before running the Docker container:

   ```
   adb connect 192.168.1.100:5555
   ```

## Notes

- This image is intended for development and debugging purposes. Be cautious about using it in production environments.
- Streaming logcat continuously can consume significant bandwidth and storage if logs are persisted.

## License

This project is open-source and available under the MIT License.

## Contributing

Contributions, issues, and feature requests are welcome. Feel free to check issues page if you want to contribute.

## Support

If you have any questions or need help using this image, please open an issue in the GitHub repository.
