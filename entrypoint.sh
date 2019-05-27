#!/bin/bash

/usr/local/bin/splunk-appinspect $APPINSPECT_ARGS
python /usr/local/bin/parse-results.py /tmp/results.json
