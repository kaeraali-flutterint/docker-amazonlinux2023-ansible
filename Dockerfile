FROM amazonlinux:2023
LABEL maintainer "Alice Kaerast"
ENV container docker
ENV pip_packages "ansible"

RUN dnf -y update; dnf clean all
RUN dnf makecache \
 && dnf -y install initscripts \
 && dnf -y update \
 && dnf -y install \
      sudo \
      which \
      python-pip \
      python3 \
      python3-pip \
 && dnf clean all

RUN pip install $pip_packages
RUN sed -i -e 's/^\(Defaults\s*requiretty\)/#--- \1/'  /etc/sudoers
RUN mkdir -p /etc/ansible
RUN echo -e '[local]\nlocalhost ansible_connection=local' > /etc/ansible/hosts
VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/lib/systemd/systemd"]
