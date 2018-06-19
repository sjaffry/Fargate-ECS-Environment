# Fargate-ECS-Environment
Code to stand up a Fargate-ECS environment that will consist of a 3 Tier web app architecture.

The code assumes that you have a container registory set-up with the desired container images to run on the Fargate ECS Cluster

![App Architecture](images/3TierWebApp-FargateECS.png =250x250)

### To Execute:
1. Execute the nested Cloudformation template "E2EEnvironment.yaml"
OR
2. Execute each individual stack manually as coded into the "CreateEnvironment.sh" script