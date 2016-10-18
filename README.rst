
==============================
ouimeaux
==============================

Open source control for Belkin WeMo devices

* Free software: BSD license
* Documentation: http://ouimeaux.rtfd.org.

Features
--------

* Supports WeMo Switch, Light Switch, Insight Switch and Motion
* Command-line tool to discover and control devices in your environment
* REST API to obtain information and perform actions on devices
* Simple responsive Web app provides device control on mobile
* Python API to interact with device at a low level

Docker
------

* run ouimeaux server in the container (note: the server port is 15000 due to the confilct on Synology NAS with the default DSM port):

``sudo docker run --detach --net=host --name wemo aktur/ouimeaux``



* build image (optional, when you have locak changes to the Dockerfile):

``sudo docker build -t aktur/ouimeaux``




Access the ouimeaux server: http://docker-machine-ip:15000


The ouimeaux WeMo server will be accessible on the docker machine ip:15000. It will also recognize all WeMo devices as long as they are connected to the same LAN segment as the docker machine.

