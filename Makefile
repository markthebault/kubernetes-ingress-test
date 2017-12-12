MINIKUBE_IP := $(shell minikube ip)
HOST_LINE := $(MINIKUBE_IP) tutum.info nginx.all
all: configure test

configure:
	minikube addons enable ingress
	sudo cp /etc/hosts /etc/hosts.test-kube-ingress-before-modifications
	echo  $(HOST_LINE) | sudo tee -a /etc/hosts

test:
	curl http://tutum.info/

clean:
	sudo cp -f /etc/hosts.test-kube-ingress-before-modifications /etc/hosts
	sudo rm /etc/hosts.test-kube-ingress-before-modifications
