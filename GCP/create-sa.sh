#!/bin/bash
echo "To run this script you should grant one of the following roles: roles/iam.serviceAccountUser, iam.serviceAccountAdmin"

SERVICE_ACCOUNT_ID=terraform_sa
SERVICE_ROLES=(
    roles/compute.admin
)
KEY_FILE=${PWD}/${SERVICE_ACCOUNT_ID}-key.json
PROJECT_ID=${DEVSHELL_PROJECT_ID}

echo "Creating service account..."
gcloud iam service-accounts create ${SERVICE_ACCOUNT_ID} \
    --description="This sa is used by terraform" \
    --display-name="terraform sa"


echo "Downloading key to ${SERVICE_ACCOUNT_ID}-key.json..."
gcloud iam service-accounts keys create "${KEY_FILE}" \
  --iam-account "${SERVICE_ACCOUNT_ID}@${PROJECT_ID}.iam.gserviceaccount.com" \
  --user-output-enabled false
echo "Key is download to ${KEY_FILE}."

echo "Binding roles.."
for role in ${SERVICE_ROLES[@]}
do
    gcloud projects add-iam-policy-binding "${PROJECT_ID}" \
        --member="serviceAccount:${SERVICE_ACCOUNT_ID}@${PROJECT_ID}.iam.gserviceaccount.com" \
        --role="${role}"
    echo "${role} is bound."
done