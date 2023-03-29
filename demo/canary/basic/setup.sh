#!/bin/bash

oc new-project argo-rollouts-demo-basic
oc apply -f service.yaml
oc apply -f rollout.yaml
oc expose svc/rollouts-demo --name=app
oc annotate route app haproxy.router.openshift.io/disable_cookies=true
oc annotate route app haproxy.router.openshift.io/balance=roundrobin