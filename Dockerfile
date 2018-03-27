FROM ubuntu:16.04

# Install make
RUN apt-get update && apt-get install -y \
  build-essential

ADD http://pegasus.isi.edu/montage/Montage_v3.3_patched_4.tar.gz /
RUN tar zxvf Montage_v3.3_patched_4.tar.gz && \
    make -C /Montage_v3.3_patched_4 && \
    echo "export PATH=\$PATH:/Montage_v3.3_patched_4/bin" >> /etc/bash.bashrc

ENV PATH $PATH:/Montage_v3.3_patched_4/bin
