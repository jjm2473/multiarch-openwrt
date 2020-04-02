FROM scratch

COPY --chown=0:0 root/ /

ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

EXPOSE 80
EXPOSE 22

ENTRYPOINT [ "/rom/init/init.sh" ]
