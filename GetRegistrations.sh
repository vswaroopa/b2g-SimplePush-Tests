#!/bin/bash

cat log.txt | grep -o 'Push[0-9]* Registration:.*' > testresults/Registrations.txt


