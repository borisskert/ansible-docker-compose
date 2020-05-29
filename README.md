# ansible-docker-compose

Installs docker-compose on ubuntu (or other Linux-based systems).

## Supported systems

* Ubuntu
  * xenial
  * bionic
  * focal
* Debian
  * 

## Role Parameters

| Parameter name         | Description                                              | Default value             |
|------------------------|----------------------------------------------------------|---------------------------|
| docker_compose_version | Specifies the version of docker-compose to be installed  | [empty] => latest version |

## Usage

### Add to `requirements.yml`

```yaml
- name: install-docker-compose
  src: https://github.com/borisskert/ansible-docker-compose.git
  scm: git
```

### Example Playbooks

Minimal:

```yaml
- hosts: servers
  roles:
  - install-docker-compose
```

All parameters:

```yaml
- hosts: servers
  roles:
  - role: install-docker-compose
    docker_compose_version: 1.21.1
```

## Testing

Requirements:

* [Vagrant](https://www.vagrantup.com/)
* [VirtualBox](https://www.virtualbox.org/)
* [Ansible](https://docs.ansible.com/)
* [Molecule](https://molecule.readthedocs.io/en/latest/index.html)
* [yamllint](https://yamllint.readthedocs.io/en/stable/#)
* [ansible-lint](https://docs.ansible.com/ansible-lint/)
* [Docker](https://docs.docker.com/)

### Run within docker

```shell script
molecule test --scenario-name ubuntu
molecule test --scenario-name debian
```

### Run within Vagrant

```shell script
molecule test --scenario-name vagrant --parallel
```
