# Amazon Linux 2023 Ansible Test Image

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/alicekaerast/docker-amazonlinux2023-ansible/build.yml)

Amazon Linux 2023 Docker container for Ansible playbook and role testing

## Tags

- `latest`: Latest installable version of Ansible (which may be limited by available Python version)

## How to build

This image is only built when PRs are merged. If you need to build the image on your own locally:

1. `docker build -t docker-amazonlinux2023-ansible .`

## Molecule usage

Configure the platform in `molecule/default/molecule.yml` as following:

```yml
platforms:
  - name: tomcat
    image: "ghcr.io/alicekaerast/docker-amazonlinux2023-ansible:latest"
    volumes:
      - /sys/fs/cgroup:/sys/fs/cgroup:rw
      - /run
    cgroupns_mode: host
    privileged: true
    pre_built_image: true
```
