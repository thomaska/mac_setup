#!/bin/bash
cp ./.bash_rc ./.gitconfig ~/

## Install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

## Install latest Gcp 
wget https://dl.google.com/dl/cloudsdk/channels/rapid/google-cloud-sdk.tar.gz
gunzip -c google-cloud-sdk.tar.gz | tar xopf -
./google-cloud-sdk/install.sh --quiet

## Install kubectl (requires Gcp)
gcloud components install kubectl --quiet

## Install Confluent Platform 3.2.1
wget http://packages.confluent.io/archive/3.2/confluent-oss-3.2.1-2.11.tar.gz
gunzip -c confluent-oss-3.2.1-2.11.tar.gz | tar xopf -
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
export PATH=$PATH:$DIR/confluent-3.2.1/bin
