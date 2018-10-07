FROM alpine:edge

ENV USER=lam
ENV PATH="$PATH:/home/$USER/.openmpi/bin"
ENV LD_LIBRARY_PATH="$LD_LIBRARY_PATH:/home/$USER/.openmpi/lib/"

RUN apk add --update alpine-sdk gcc make perl openssh
RUN mkdir study
RUN wget https://download.open-mpi.org/release/open-mpi/v3.1/openmpi-3.1.2.tar.gz && tar -xvf ./openmpi-* && cd openmpi-* && ./configure --prefix="/home/$USER/.openmpi" && make -j 2 && make install && cd .. && rm -rf ./openmpi-3.1.2.tar.gz ./openmpi-*

CMD tail -f /dev/null