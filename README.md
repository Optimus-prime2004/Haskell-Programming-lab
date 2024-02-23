import picamera

# Initialize the camera
camera = picamera.PiCamera()

# Set the resolution of the stream
camera.resolution = (640, 480)

# Start the stream
camera.start_stream()

# Get the RTSP URL
rtsp_url = "rtsp://" + camera.host + ":" + str(camera.stream_port) + "/"

# Stop the stream and release the camera resources
camera.stop_stream()
camera.close()

# Print the RTSP URL
print(rtsp_url)
