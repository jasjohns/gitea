FROM registry.redhat.io/ubi8
ADD https://github.com/go-gitea/gitea/releases/download/v1.12.4/gitea-1.12.4-linux-amd64 /usr/local/sbin/gitea
RUN yum -y install git && yum -y clean all && rm -rf /usr/share/doc && chmod +x /usr/local/sbin/gitea && mkdir /srv/gitea && chmod 777 /srv/gitea
ENTRYPOINT ["/usr/local/sbin/gitea"]
EXPOSE 3000
