# ansible-docker-compose

Installs docker-compose on ubuntu (or other Linux-based systems).

## Role Parameters

| Parameter name         | Description                                              | Default value             |
|------------------------|----------------------------------------------------------|---------------------------|
| version | Specifies the version of docker-compose to be installed  | [empty] => latest version |

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
    version: 1.21.1
```
