FROM centos:7.9.2009

# Forzamos UTF-8
ENV LANG=en_US.UTF-8
ENV LC_ALL=en_US.UTF-8
ENV PYTHONIOENCODING=utf-8

# Apuntamos los repos a Vault
RUN sed -i 's|^mirrorlist=|#mirrorlist=|g' /etc/yum.repos.d/CentOS-Base.repo && \
    sed -i 's|^#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-Base.repo

# Instalamos EPEL, Python36 y utilidades básicas, y Ansible
RUN localedef -i en_US -f UTF-8 en_US.UTF-8 && \
    yum -y clean all && \
    yum -y install epel-release && \
    yum -y install python36 python36-pip sudo vim git curl && \
    python3.6 -m pip install --no-cache-dir --upgrade pip setuptools wheel && \
    python3.6 -m pip install --no-cache-dir ansible && \
    yum clean all

WORKDIR /ansible
CMD ["/bin/bash"]

