# Use the official Ubuntu 20.04 base image
FROM ubuntu:20.04

# Update the package list and install necessary packages
RUN apt-get -y update && \
  apt-get install -y binutils wget vim && \
  # Download Free Pascal Compiler (FPC) 3.0.4
  wget -O fpc.tar https://sourceforge.net/projects/freepascal/files/Linux/3.0.4/fpc-3.0.4.x86_64-linux.tar/download && \
  # Extract it
  tar -xvf fpc.tar && \
  rm fpc.tar
# Go to fpc-3.0.4.x86_64-linux and execute install.sh