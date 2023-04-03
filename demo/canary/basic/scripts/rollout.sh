#!/bin/bash
oc argo rollouts set image rollouts-demo rollouts-demo=argoproj/rollouts-demo:$1
