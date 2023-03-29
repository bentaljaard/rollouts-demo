#!/bin/bash

oc new-project argo-rollouts-demo-dev

oc apply -f services.yaml
oc apply -f gateway.yaml
oc apply -f virtualservice.yaml
oc apply -f rollout.yaml