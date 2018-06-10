#!/bin/bash

## Aurora DB
echo "Deleting Aurora DB Cluster.."
aws cloudformation delete-stack --stack-name "AuroraDb2" --profile fargate
read -n 1 -s

## API Gateway
echo "Deleting API Gateway.."
aws cloudformation delete-stack --stack-name "APIGateway"  --profile fargate
read -n 1 -s

## Delete Fargate Service
echo "Deleting Fargate Service"
aws cloudformation delete-stack --stack-name "FargateService" --profile fargate
read -n 1 -s

## Delete Fargate App Infrastructure
echo "Deleting Fargate App Infrastructure.."
aws cloudformation delete-stack --stack-name "FargateInfrastructure"  --profile fargate
read -n 1 -s

## Delete Fargate Networking Environment
echo "Deleting Fargate Networking Environment.."
aws cloudformation delete-stack --stack-name "FargateNetworking"  --profile fargate




