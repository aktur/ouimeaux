* build image

``sudo docker build -t aktur/ouimeaux``


* run ouimeaux server in the container (note: server port is 15000)

``sudo docker run --detach --net=host --name wemo aktur/ouimeaux``



* you can also run this with the following docker-compose.yml:

``
ouimeaux:
  image: 'aktur/ouimeaux'
  net: "host"
``

Access the ouimeaux server: http://docker-machine-ip:15000

and the command ``sudo docker-compose up`` when you want to see output of the server (useful when you want to check if
which WeMo devices were discovered by the server).

The ouimeaux WeMo server will be accessible on the docker machine ip:15000. It will also recognize all WeMo devices as long as they are connected to the same LAN segment as the docker machine.

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
