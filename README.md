# ansible-docker-compose

Installs docker-compose on ubuntu (or other Linux-based systems).

# Role Parameters

| Parameter name         | Description                                              | Default value             |
|------------------------|----------------------------------------------------------|---------------------------|
| version | Specifies the version of docker-compose to be installed  | [empty] => latest version |

# Usage

## requirements.yml

```
- name: install-docker-compose
  src: git@github.com:flandiGT/ansible-docker-compose.git
  scm: git
```

Example Playbook
----------------

Example without parameters

```
- hosts: servers
  roles:
  - install-docker-compose
```

Example with parameters

```
- hosts: servers
  roles:
  - role: install-docker-compose
    version: 1.21.1
```
