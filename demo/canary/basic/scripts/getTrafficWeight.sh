#!/bin/bash

# oc get virtualservice -o "custom-columns=NAME:.metadata.name,STABLE-WEIGHT:.spec.http[0].route[0].weight,CANARY-WEIGHT:.spec.http[0].route[1].weight"