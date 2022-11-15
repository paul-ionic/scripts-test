#!/bin/bash

echo $SERVER_URL
echo $BUILD_ENV

if [ "$BUILD_ENV" = "qa" ]; then
    envsubst < ./src/environments/environment.ts
    echo `cat ./src/environments/environment.ts`
else
    envsubst < ./src/environments/environment.prod.ts
    echo `cat ./src/environments/environment.prod.ts`
fi