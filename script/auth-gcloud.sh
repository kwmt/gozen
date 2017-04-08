#! /bin/bash
# echo $GCLOUD_KEY | base64 --decode > gcloud.p12
echo $GCLOUD_KEY | base64 --decode --ignore-garbage > ${HOME}/gcloud-service-key.json
sudo /opt/google-cloud-sdk/bin/gcloud auth activate-service-account --key-file ${HOME}/gcloud-service-key.json
# gcloud auth activate-service-account $GCLOUD_EMAIL --key-file=gcloud.p12
ssh-keygen -f ~/.ssh/google_compute_engine -N ""
