# gRPC Evans

Simple container including tools for loadtesting and debugging gRPC services.
It is based on weaveworks loadtester image but adds `evans` to the tools chain as well.

### Run locally
It is possible to use it locally like this

```
docker run -it --net=host alaa/evans:0.17.0
```

and then exec into the cotnainer to use the evans tool
```
docker exec -it $CONTAINER_ID evans -h
```

### Run on Kubernetes

This is basically when it is needed the most, to be able to teset and debug and use the gRPC interface
of a service running insde the Kubernetes cluster.

```
kubectl run grpc-tools --restart=Never --image=alaa/evans:0.17.0 -n default
```

```
kubectl exec -it -n default grpc-tools bash
```
