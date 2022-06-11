# Fun with Vagrant

Use this repo to quickly spin-up VMs to practice _stuff_. Feel free to contribute.

## Getting Help

```
make help
```

## Apps

You can then access for example the following.

* [Local Bitbucket](http://192.168.57.80:7990)
* [Local Nexus](http://192.168.57.90:8081)

## Kube

Extract kubeconfig.

```
vagrant ssh [kube-vm] -c 'sudo microk8s config' > ~/.kube/[kube-vm]
```

Update `~/.kube/[kube-vm]` file to use the IP address specified
in `Vagrant` file. Port number `16443` may vary.

```
...
server: https://[the-ip]:16443
...
```

Try it out.

```
KUBECONFIG=~/.kube/[kube-vm] kubectl get ns
```
