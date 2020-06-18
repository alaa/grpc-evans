FROM weaveworks/flagger-loadtester:0.17.0
RUN wget https://github.com/ktr0731/evans/releases/download/0.9.0/evans_linux_amd64.tar.gz \
    && tar xvzf evans_linux_amd64.tar.gz \
    && chmod +x evans
CMD ["/bin/sh", "-c", "#(nop)"]
ENTRYPOINT ["./loadtester"]
