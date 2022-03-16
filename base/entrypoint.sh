#!/bin/bash
exercism configure --token=${EXERCISM_AUTH_TOKEN}
exec "$@"
