#!/bin/bash
API_list=(
	compute.googleapis.com
) 

echo "Enabling APIs"
for service in ${API_list[@]}; do
  echo "Enabling API ${service}..."
  gcloud services enable "${service}"
done