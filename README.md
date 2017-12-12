# Test Kubernetes Ingress
Kubernetes provides natively an ingress functionality allowing exposing services outside of the Kubernetes cluster.
To have more information about that click [here](https://kubernetes.io/docs/concepts/services-networking/ingress/)

In this simple tutorial, two services will be created to try the ingress service.

## Create the different services
This section will create two deployment of containers based on nginx and tutom/helloworld. There are base on HTTP and exposing the port TCP:80.
Two service will also be attached to the deployments.

Finally, ingress rules will be created to route all trafic from the header *tutum.info* to the tutum containers and *nginx.all* to the nginx containers.
```
$ kubectl apply -f .
```

## Update your host file
Here we will be updating your host file to be able to make a request with your navigator on the different URLs
```
$ make configure
```

## Let's try
You can now try on your navigator the different urls
[tutum](http://tutum.info) or [nginx](http://nginx.all)

## Clean up
Delete the create resources in you host
```
$ make clean
```
