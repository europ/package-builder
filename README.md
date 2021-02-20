# Containerized Package Builder

Containerized build to create sample package(s) that will add a specific repository to the package manager.

#### Prerequisites

* `docker`
* `docker-compose`
* `make`

#### Usage

You can build every package by running:

```sh
make
```

#### Description

By installing the created sample package(s) a specific target (dummy) repository will be added (installed) to the system package manager - added to system configuration (`/etc/`). Simply put, installing such a built package will create a file in `/etc/` that is responsible for a remote package repository.

##### deb

* build: `make deb`
* clean: `make clean-deb`
* install: `apt install /path/to/<package>.deb` or `dpkg -i /path/to/<package>.deb`

##### rpm

* build: `make rpm`
* clean: `make clean-rpm`
* install: `yum install /path/to/<package>.rpm` or `dnf install /path/to/<package>.rpm`
