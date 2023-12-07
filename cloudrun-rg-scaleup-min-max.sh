#!/bin/bash

# for example Set your project and service details
# PROJECT_ID="my-gcp-project"
# SERVICE_NAME="my-cloud-run-service"
# LOCATION="us-central1"

# Set your project and service details
PROJECT_ID="test-ondc"
SERVICE_NAME="hello"
LOCATION="us-central1"

# Set the new values for min_instances and max_instances
MIN_INSTANCES=1
MAX_INSTANCES=2

# Update the Cloud Run service
gcloud run services update $SERVICE_NAME \
  --project $PROJECT_ID \
  --region $LOCATION \
  --min-instances $MIN_INSTANCES \
  --max-instances $MAX_INSTANCES
