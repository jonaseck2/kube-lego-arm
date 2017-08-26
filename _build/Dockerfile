FROM arm32v7/golang

ENV GOARCH=arm \
    KUBE_LEGO_VERSION=0.1.5

RUN git clone --branch ${KUBE_LEGO_VERSION} --depth 1 https://github.com/jetstack/kube-lego.git ${GOPATH}/src/github.com/jetstack/kube-lego \
&&  sed -i 's/GOARCH :=/GOARCH? :=/' ${GOPATH}/src/github.com/jetstack/kube-lego/Makefile \
&&  cd ${GOPATH}/src/github.com/jetstack/kube-lego \
&&  make build
