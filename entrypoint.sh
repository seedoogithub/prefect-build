#!/usr/bin/env bash

if [ "$PREFECT_NODE_TYPE" == "server" ]; then
    echo "Starting Prefect server..."
    prefect server start
elif [ "$PREFECT_NODE_TYPE" == "agent" ]; then
    echo "Starting Prefect agent..."
    prefect worker start --pool seedoo-custom-worker
else
    echo "Unknown or unspecified PREFECT_NODE_TYPE: $PREFECT_NODE_TYPE"
    exec "$@"
fi