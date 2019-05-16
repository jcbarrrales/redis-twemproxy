# Twemproxy 

## Introduction

This chart bootstraps a twemproxy cluster with multiple redis instances on a [Kubernetes](http://kubernetes.io) cluster using the [Helm](https://helm.sh) package manager.

## Prerequisites

- Kubernetes 1.6+

## Installing the Chart

To install the chart with the release name `b2c`:

```bash
$ helm install --name b2c .
```

The command deploys twemproxy cluster on the Kubernetes cluster in the default configuration. The [configuration](#configuration) section lists the parameters that can be configured during installation.

### Uninstall

To uninstall/delete the `b2c` deployment:

```bash
$ helm delete b2c --purge
```

## Configuration

The following table lists the configurable parameters of the twemproxy chart and their default values.

| Parameter                        | Description                         | Default                                |
| ---------------------------------| ----------------------------------- | -------------------------------------- |
| `redisImage`                     | `redis` image and tag.              | `redis:5.0-rc`                         |
| `twemImage`                      | `twemproxy` image and tag.          | `gojektech/twemproxy:0.4.1`            |
| `imagePullSecrets`               | secret name to pull images          | `registrykey`                          |
| `twemproxy.replicaCount`         | number of twemproxy replicas        | `3`                                    |
| `terminationGracePeriodSeconds`  | graceful shutdown for container     | `3`                                    |

Specify each parameter using the `--set key=value[,key=value]` argument to `helm install`. 

