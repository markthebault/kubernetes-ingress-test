# Test Kubernetes Ingress
## Create the different services:
```
$ kubectl apply -f .
```

## Update your host file:
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
