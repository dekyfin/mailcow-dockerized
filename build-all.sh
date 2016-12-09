#!/bin/bash

/bin/bash build-network.sh
for buildx in $(ls build-*.sh | grep -vE "all|network"); do
    echo "Starting build file ${buildx} ..."
	/bin/bash ${buildx}
done
/bin/bash fix-permissions.sh