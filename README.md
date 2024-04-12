# Amazon Linux 2023 Ansible Test Image

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/alicekaerast/docker-amazonlinux2023-ansible/build.yml)

Amazon Linux 2023 Docker container for Ansible playbook and role testing

## Tags

- `latest`: Latest installable version of Ansible (which may be limited by available Python version)

## How to build

This image is only built when PRs are merged. If you need to build the image on your own locally:

1. `docker build -t docker-amazonlinux2023-ansible .`
