#!/bin/bash

## Create Fargate Networking Environment
echo "Creating Fargate Networking Environment.."
aws cloudformation create-stack --stack-name "FargateNetworking" --template-body file://Networking.yaml --parameters file://Networking-parameters.json --profile fargate
read -n 1 -s

## Create Fargate App Infrastructure
echo "Creating Fargate App Infrastructure.."
aws cloudformation create-stack --stack-name "FargateInfrastructure" --template-body file://Infrastructure.yaml --parameters file://Infrastructure-parameters.json --profile fargate --capabilities CAPABILITY_NAMED_IAM
read -n 1 -s

## Create Fargate Service
echo "Creating Fargate Service"
aws cloudformation create-stack --stack-name "FargateService" --template-body file://Service.yaml --parameters file://Service-parameters.json --profile fargate
read -n 1 -s

## API Gateway
echo "Creating API Gateway.."
aws cloudformation create-stack --stack-name "APIGateway" --template-body file://ApiGateway.yaml --parameters file://ApiGateway-parameters.json --profile fargate
read -n 1 -s

## Aurora DB
echo "Creating Aurora DB Cluster.."
aws cloudformation create-stack --stack-name "AuroraDb" --template-body file://AuroraDb.yaml --parameters file://AuroraDb-parameters.json --profile fargate