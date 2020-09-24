FROM registry.redhat.io/ubi8
ADD https://github.com/go-gitea/gitea/releases/download/v1.12.4/gitea-1.12.4-linux-amd64 /gitea
RUN yum -y install git && yum -y clean all && rm -rf /usr/share/doc && chmod +x /gitea && mkdir /opt/gitea && chmod 777 /opt/gitea
ENTRYPOINT ["/gitea"]
