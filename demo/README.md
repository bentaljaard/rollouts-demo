# Argo Rollouts Demo

This repository contains configurations and scripts to showcase Argo Rollouts on OpenShift.

The demo consist of three different scenarios:

* Basic rollouts (Pod Replication Weight)
* Rollout with Service Mesh (Traffic Shifting)
* Rollout with Service Mesh and ArgoCD (GitOps)


## Pre-requisites

The following operators should be installed on your OpenShift cluster:

* Elastic Search
* Distributed tracing platform
* Kiali
* OpenShift Service mesh
* OpenShift GitOps

The Argo Rollouts operator should also be installed:

```shell
oc create namespace argo-rollouts
oc apply -n argo-rollouts -f https://github.com/argoproj/argo-rollouts/releases/latest/download/install.yaml
```

Create the dev and staging mesh configurations:

```shell
oc apply -f service_mesh_setup/dev-mesh.yaml
oc apply -f service_mesh_setup/staging-mesh.yaml
oc label namespace staging-mesh argocd.argoproj.io/managed-by=openshift-gitops
```

## Demo setups

Each one of the scenarios under demo/canary has a scripts/setup.sh to deploy the scenario. Run this from the relevant scripts folder.





