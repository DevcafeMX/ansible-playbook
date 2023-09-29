FROM debian:trixie as base
WORKDIR /usr/local/bin
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && \
    apt-get --assume-yes upgrade && \
    apt-get -y install apt-utils software-properties-common wget curl git build-essential && \
    apt-get clean autoclean && \
    apt-get autoremove --yes

ENV UBUNTU_CODENAME=lunar
# This works with both Debian and Ubuntu per the following docs
# https://docs.ansible.com/ansible/latest/installation_guide/installation_distros.html#installing-ansible-on-debian
RUN wget -O- "https://keyserver.ubuntu.com/pks/lookup?fingerprint=on&op=get&search=0x6125E2A8C77F2818FB7BD15B93C4A3FD7BB9C367" | gpg --dearmour -o /usr/share/keyrings/ansible-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/ansible-archive-keyring.gpg] http://ppa.launchpad.net/ansible/ansible/ubuntu $UBUNTU_CODENAME main" | tee /etc/apt/sources.list.d/ansible.list
RUN apt-get update && apt-get -y install ansible

# In case you want to run this as a single user
# FROM base as saber
# ARG TAGS
# RUN addgroup --gid 1000 trace
# RUN adduser --gecos trace --uid 1000 --gid 1000 --disabled-password trace
# USER trace
# WORKDIR /home/trace

FROM base
COPY . .
CMD ["sh", "-c", "ansible-playbook $TAGS local.yml"]
