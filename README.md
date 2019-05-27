# splunk-docker-appinspect
Dockerfile for creating an appinspect container

# run manually

docker run -v /docker/testapp:/tmp/testapp -e "APPINSPECT_ARGS=inspect /tmp/testapp/ --mode test --output-file=/tmp/results.json" schose/appinspect:latest
