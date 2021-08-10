#!/bin/bash
BUCKET_NAME=terraform-state
PROJECT=${DEVSHELL_PROJECT_ID}
LOCATION=europe-north1
BUCKET_USER=terraform-svc@jenkins-certification.iam.gserviceaccount.com

gsutil mb -l ${LOCATION} gs://${BUCKET_NAME}-${PROJECT}

gsutil iam ch serviceAccount:${BUCKET_USER}:objectAdmin gs://${BUCKET_NAME}-${PROJECT}