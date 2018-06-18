#!/bin/bash

## Aurora DB
echo "Deleting Aurora DB Cluster.."
aws cloudformation delete-stack --stack-name "LiveDemoAuroraDb" --profile fargate
read -n 1 -s

## API Gateway
echo "Deleting API Gateway.."
aws cloudformation delete-stack --stack-name "LiveDemoAPIGateway"  --profile fargate
read -n 1 -s

## Delete Fargate Service
echo "Deleting Fargate Service"
aws cloudformation delete-stack --stack-name "LiveDemoService" --profile fargate
read -n 1 -s

## Delete Fargate App Infrastructure
echo "Deleting Fargate App Infrastructure.."
aws cloudformation delete-stack --stack-name "LiveDemoInfrastructure"  --profile fargate
read -n 1 -s

## Delete Fargate Networking Environment
echo "Deleting Fargate Networking Environment.."
aws cloudformation delete-stack --stack-name "LiveDemoNetworking"  --profile fargate




