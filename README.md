# ansible-docker-compose

Installs docker-compose on ubuntu (or other Linux-based systems).

## Supported systems

* Ubuntu
  * xenial
  * bionic
  * focal
* Debian
  * buster
  * stretch

## Role Parameters

| Variable      | Type | Mandatory? | Default | Description           |
|---------------|------|------------|---------|-----------------------|
| docker_compose_version | version number | no   | `''`    | Specifies the version of `docker-compose` to be installed |
| docker_compose_install_from_pip | boolean | no | `false` | Specifies if `docker-compose` will be installed from the `pip` package manager |
| docker_compose_bash_completion  | boolean | no | `false` | Specifies if `docker-compose`'s bash-completion will be installed |

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
    docker_compose_install_from_pip: false
    docker_compose_bash_completion: true
```

## Testing

Requirements:

* [Ansible](https://docs.ansible.com/)
* [Molecule](https://molecule.readthedocs.io/en/latest/index.html)
* [yamllint](https://yamllint.readthedocs.io/en/stable/#)
* [ansible-lint](https://docs.ansible.com/ansible-lint/)
* [Docker](https://docs.docker.com/)

### Run within docker

```shell script
molecule test
molecule test --scenario-name install-specific-version
molecule test --scenario-name upgrade-to-latest-version
molecule test --scenario-name upgrade-to-specific-version
molecule test --scenario-name install-latest-version-from-pip
molecule test --scenario-name install-specific-version-from-pip
molecule test --scenario-name install-latest-bash-completion
molecule test --scenario-name install-specific-bash-completion
```

I recommend to use [pyenv](https://github.com/pyenv/pyenv) for local testing.
Within the Github Actions pipeline I use [my own molecule Docker image](https://github.com/borisskert/docker-molecule).


## License

MIT

## Author Information

* [borisskert](https://github.com/borisskert)

## Links

* [docker-compose @ github](https://github.com/docker/compose)
