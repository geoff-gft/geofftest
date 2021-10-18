#!/bin/bash
set -e
#RANDOM="$(dd if=/dev/urandom count=5 bs=1 | od -t d)"
#create a project and save it to a variable
RANDOM_NUM=${RANDOM}
NEW_PROJECT="faisal-cicd-21607"

echo "1"
# gcloud projects create ${NEW_PROJECT} --folder=398506523923
echo "2"
gcloud config set project ${NEW_PROJECT}
echo "3"
# gcloud config set compute/zone europe-west1-b
echo "4"
gcloud services enable cloudbilling.googleapis.com
echo "5"
sleep 20
gcloud alpha billing projects link "${NEW_PROJECT}" --billing-account "01A2F5-73127B-50AE5B" --format=none
echo "6"
gcloud services enable compute.googleapis.com cloudresourcemanager.googleapis.com
echo "7"
echo ${NEW_PROJECT}
RANDOM_BUCKET="test-bucket-${RANDOM_NUM}"

gsutil ls -b gs://${RANDOM_BUCKET} || gsutil mb -p ${NEW_PROJECT} -b on gs://${RANDOM_BUCKET}
