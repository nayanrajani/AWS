# MODULE 7: MONITORING AND ANALYTICS

- Learning objectives

    - In this module, you will learn how to:

        - Summarize approaches to monitoring your AWS environment.
        - Describe the benefits of Amazon CloudWatch.
        - Describe the benefits of AWS CloudTrail.
        - Describe the benefits of AWS Trusted Advisor.

    # Amazon CloudWatch
        
    ![image](https://user-images.githubusercontent.com/57224583/141066270-67d211c8-22c6-4aac-8096-2a8bf406ed37.png)

    ![image](https://user-images.githubusercontent.com/57224583/141066408-c75f78d3-ec1b-492e-98eb-59c256388139.png)

    - [Amazon CloudWatch](https://aws.amazon.com/cloudwatch/) is a web service that enables you to monitor and manage various metrics and configure alarm actions based on data from those metrics.

        - CloudWatch uses [metrics](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/working_with_metrics.html) to represent the data points for your resources. AWS services send metrics to CloudWatch. CloudWatch then uses these metrics to create graphs automatically that show how performance has changed over time. 

    - CloudWatch alarms

        - With CloudWatch, you can create [alarms](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/AlarmThatSendsEmail.html) that automatically perform actions if the value of your metric has gone above or below a predefined threshold. 

        - For example, suppose that your company’s developers use Amazon EC2 instances for application development or testing purposes. If the developers occasionally forget to stop the instances, the instances will continue to run and incur charges. 

        - In this scenario, you could create a CloudWatch alarm that automatically stops an Amazon EC2 instance when the CPU utilization percentage has remained below a certain threshold for a specified period. When configuring the alarm, you can specify to receive a notification whenever this alarm is triggered.

    - CloudWatch dashboard

        ![image](https://user-images.githubusercontent.com/57224583/141066588-68ea29eb-7fee-4106-91cf-cf25e8f27297.png)

        The CloudWatch [dashboard](https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/CloudWatch_Dashboards.html) feature enables you to access all the metrics for your resources from a single location. For example, you can use a CloudWatch dashboard to monitor the CPU utilization of an Amazon EC2 instance, the total number of requests made to an Amazon S3 bucket, and more. You can even customize separate dashboards for different business purposes, applications, or resources.

    # AWS CloudTrail

    - [AWS CloudTrail](https://aws.amazon.com/cloudtrail/) records API calls for your account. The recorded information includes the identity of the API caller, the time of the API call, the source IP address of the API caller, and more. You can think of CloudTrail as a “trail” of breadcrumbs (or a log of actions) that someone has left behind them.

    - Recall that you can use API calls to provision, manage, and configure your AWS resources. With CloudTrail, you can view a complete history of user activity and API calls for your applications and resources. 

    - Events are typically updated in CloudTrail within 15 minutes after an API call. You can filter events by specifying the time and date that an API call occurred, the user who requested the action, the type of resource that was involved in the API call, and more.

    - Example: AWS CloudTrail event

        - Suppose that the coffee shop owner is browsing through the AWS Identity and Access Management (IAM) section of the AWS Management Console. They discover that a new IAM user named Mary was created, but they do not who, when, or which method created the user.

        - To answer these questions, the owner navigates to AWS CloudTrail.

            ![image](https://user-images.githubusercontent.com/57224583/141067998-3b8cceee-f961-437f-919f-31ae9d417921.png)

            - In the CloudTrail Event History section, the owner applies a filter to display only the events for the “CreateUser” API action in IAM. The owner locates the event for the API call that created an IAM user for Mary. This event record provides complete details about what occurred: 

            - On January 1, 2020 at 9:00 AM, IAM user John created a new IAM user (Mary) through the AWS Management Console.

            - CloudTrail Insights

                - Within CloudTrail, you can also enable [CloudTrail Insights](https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-insights-events-with-cloudtrail.html). This optional feature allows CloudTrail to automatically detect unusual API activities in your AWS account. 

                - For example, CloudTrail Insights might detect that a higher number of Amazon EC2 instances than usual have recently launched in your account. You can then review the full event details to determine which actions you need to take next.
    
    ![image](https://user-images.githubusercontent.com/57224583/141068958-b60fe71d-0c82-4593-b532-2db9f5f52826.png)

    ![image](https://user-images.githubusercontent.com/57224583/141069906-ea77f1ba-cbe8-4a16-b28d-4eb2dd0c30c3.png)

    # AWS Trusted Advisor

    ![image](https://user-images.githubusercontent.com/57224583/141075143-3c325320-d502-4c1b-a1c6-c80e48943700.png)

    - [AWS Trusted Advisor](https://aws.amazon.com/premiumsupport/technology/trusted-advisor/) is a web service that inspects your AWS environment and provides real-time recommendations in accordance with AWS best practices.

    - Trusted Advisor compares its findings to AWS best practices in five categories: cost optimization, performance, security, fault tolerance, and service limits. For the checks in each category, Trusted Advisor offers a list of recommended actions and additional resources to learn more about AWS best practices. 

    - The guidance provided by AWS Trusted Advisor can benefit your company at all stages of deployment. For example, you can use AWS Trusted Advisor to assist you while you are creating new workflows and developing new applications. Or you can use it while you are making ongoing improvements to existing applications and resources.

    - AWS Trusted Advisor dashboard

        ![image](https://user-images.githubusercontent.com/57224583/141074845-99452c33-6c41-4e8e-86cf-b04ce740d7e1.png)

        - When you access the Trusted Advisor dashboard on the AWS Management Console, you can review completed checks for cost optimization, performance, security, fault tolerance, and service limits.

        - For each category:

            - The green check indicates the number of items for which it detected no problems.

            - The orange triangle represents the number of recommended investigations.
            
            - The red circle represents the number of recommended actions.


    # Summary

    - In Module 7, you learned about the following concepts:

        - Amazon CloudWatch
        - AWS CloudTrail
        - AWS Trusted Advisor

    - Additional resources

        - To learn more about the concepts that were explored in Module 7, review these resources.

            - [Management and Governance on AWS](https://aws.amazon.com/products/management-tools)
            - [Monitoring and Observability](https://aws.amazon.com/products/management-tools/use-cases/monitoring-and-observability/)
            - [Configuration, Compliance, and Auditing](https://aws.amazon.com/products/management-tools/use-cases/configuration-compliance-and-auditing/)
            - [AWS Management & Governance Blog](https://aws.amazon.com/blogs/mt/)
            - [Whitepaper: AWS Governance at Scale](https://docs.aws.amazon.com/whitepapers/latest/aws-governance-at-scale/introduction.html)

    