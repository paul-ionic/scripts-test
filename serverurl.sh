#!/bin/bash

echo $SERVER_URL

envsubst < ../src/environments/environment.ts

echo `cat ../src/environments/environment.ts`