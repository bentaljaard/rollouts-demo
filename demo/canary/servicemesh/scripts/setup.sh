#!/bin/bash

oc new-project argo-rollouts-demo-dev

oc apply -f ../service.yaml
oc apply -f ../gateway.yaml
oc apply -f ../destination-rule.yaml
oc apply -f ../virtual-service.yaml
oc apply -f ../rollout.yaml