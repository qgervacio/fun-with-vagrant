# Fun with Vagrant

Use this repo to quickly spin-up VMs to practice environments. Feel free to contribute.

## Getting Help

```
make help
```

## Apps

You can then access for example the following.

* [Local Bitbucket](http://192.168.57.20:7990)
* [Local Nexus](http://192.168.57.30:8081)

## Kube

Extract `microk8s` kubeconfig

`make e n=kube0 c='sudo microk8s config' > ~/.kube/kube0`

Update ~/.kube/kube0 file to use the IP address specified
in `Vagrant` file

`server: https://192.168.57.10:16443`

Try it out

```
export KUBECONFIG=~/.kube/kube0
kubectl get ns
```
