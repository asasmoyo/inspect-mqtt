# Inspect MQTT

A simple environment to inspect MQTT packet using Wireshark and Vagrant.

## How to use

You will need to setup [Vagrant](https://www.vagrantup.com) first. Then you can just run

```
vagrant up
```

to bring up the whole environment.

You can then run command bellow to ssh into the vm

``` bash
# ssh to server
vagrant ssh server

# ssh to client
vagrant ssh client
```

You will also install `tshark` can be on either client on server (too bad I can't find how to install it noninteractively)

```
sudo apt-get install tshark
```

## Using the server

You can just run

```
mosquitto
```

to run the MQTT server. By default it runs on all ips in port 1883.

## Using the client

```
mqtt-benchmark -broker tcp://10.11.12.2:1883 -clients 1 -count 100
```

Please check [mqtt-benchmark](https://github.com/krylovsk/mqtt-benchmark) for further usage.

## Licence

MIT
