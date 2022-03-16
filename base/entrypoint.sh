#!/bin/bash
if ! exercism configure --token=${EXERCISM_AUTH_TOKEN} ; then
    echo ""
    echo "You can pass your token in the EXERCISM_AUTH_TOKEN environment variable when running the container"
    echo "Example:"
    echo ""
    echo "docker container run --rm -it -e EXERCISM_AUTH_TOKEN=XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX 64gag/exercism-venv-base bash"
    echo ""
fi

exec "$@"
