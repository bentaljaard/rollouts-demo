#!/bin/bash

oc new-project argo-rollouts-demo-staging
oc label namespace argo-rollouts-demo-staging argocd.argoproj.io/managed-by=openshift-gitops

oc apply -k ../.