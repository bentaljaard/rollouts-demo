#!/bin/bash
oc argo rollouts set image rollouts-demo rollouts-demo=argoproj/rollouts-demo:$1
# oc patch rollout rollouts-demo --type merge -p '{"spec":{"template":{"metadata":{"labels":{"version":"'$1'"}}}}}'