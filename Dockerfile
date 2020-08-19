FROM gcr.io/cloud-marketplace-containers/google/bazel@sha256:f670e9aec235aa23a5f068566352c5850a67eb93de8d7a2350240c68fcec3b25

RUN apt-get update -y && apt-get install -y bzip2 libassuan-dev gnupg2 gpgsm

RUN curl -s https://gnupg.org/ftp/gcrypt/libgpg-error/libgpg-error-1.38.tar.bz2 -O \
  && tar -xvf libgpg-error-1.38.tar.bz2 \
  && cd libgpg-error-1.38 \
  && ./configure \
  && make install

COPY . .
