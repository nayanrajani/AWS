1. Have you worked on CFT stack sets or nested stack ?
Yes, I have worked on CFT stack sets and nested stacks. Stack sets allow you to create, update, and delete stacks across multiple accounts and regions with a single operation. Nested stacks, on the other hand, allow you to create reusable templates by referring to other templates within your main template.

2. Have you worked on CFT custom resource stack set ?
I have worked on creating custom resource stack sets in CloudFormation. Custom resources allow you to extend CloudFormation by writing custom logic in AWS Lambda functions, which can be invoked during stack creation/update/deletion.

3. Have you created any CFT for any Serverless architecture and all ?
Yes, I have created CloudFormation templates for Serverless architectures, such as AWS Lambda functions, API Gateway, and DynamoDB tables. These templates define the resources and their configurations required for the Serverless application to run.

4. What is service catalogs ?
AWS Service Catalog is a service that allows organizations to create and manage catalogs of IT services that are approved for use on AWS. It enables organizations to centrally manage and govern IT resources to meet compliance and security requirements.

5. What resources you have created using CFT in AWS ?
I have created various resources using CloudFormation in AWS, such as EC2 instances, S3 buckets, IAM roles, VPCs, subnets, security groups, RDS databases, and Lambda functions.

6. How does traffic go from one VPC in one account to another VPC in another account via TGW ?
Traffic can go from one VPC in one AWS account to another VPC in another account via Transit Gateway (TGW). You can attach VPCs from different accounts to a TGW and route traffic between them using route tables and route propagation.

7. How does AWS Codepipeline use to deploy resources in different Env ? (via CFT)
AWS CodePipeline can be used to deploy CloudFormation templates in different environments by defining stages for each environment in the pipeline. Each stage can specify a set of actions, such as source, build, and deploy, which can be used to deploy the CloudFormation stack in the respective environment.

8. How does AWS Codebuild work in codepipeline ? (how stages can be configured in AWS codepipeline like jenkins)
AWS CodeBuild is a fully managed build service that can be integrated into an AWS CodePipeline. In CodePipeline, you can configure different stages for CodeBuild projects, where each stage can define the build actions required to compile and package the application code before deployment.

9. How to Notify client about resource creation or destroy in their account by using CFT? 
To notify clients about resource creation or deletion in their account by using CloudFormation, you can leverage AWS CloudWatch Events to monitor the stack events and trigger notifications using Amazon SNS. You can set up event rules to monitor stack creation/deletion events and send notifications to clients accordingly.