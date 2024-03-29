# Module3- GLOBAL INFRASTRUCTURE AND RELIABILITY

- Learning objectives

    - In this module, you will learn how to:

        - Summarize the benefits of the AWS Global Infrastructure.
        - Describe the basic concept of Availability Zones.
        - Describe the benefits of Amazon CloudFront and edge locations.
        - Compare different methods for provisioning AWS services.

    - Building a global footprint

        - To understand the AWS global infrastructure, consider the coffee shop. If an event such as a parade, flood, or power outage impacts one location, customers can still get their coffee by visiting a different location only a few blocks away.

        - This is similar to how the AWS global infrastructure works.

# AWS global infrastructure

![image](https://user-images.githubusercontent.com/57224583/141454720-13db3ab2-fc33-4d01-b778-a2e39ac84936.png)

- Selecting a Region

    - When determining the right Region for your services, data, and applications, consider the following four business factors. 
    
        - Compliance with data governance and legal requirements
    
            - Depending on your company and location, you might need to run your data out of specific areas. For example, if your company requires all of its data to reside within the boundaries of the UK, you would choose the London Region. 

            - Not all companies have location-specific data regulations, so you might need to focus more on the other three factors.

        - Proximity to your customers
        
            - Selecting a Region that is close to your customers will help you to get content to them faster. For example, your company is based in Washington, DC, and many of your customers live in Singapore. You might consider running your infrastructure in the Northern Virginia Region to be close to company headquarters, and run your applications from the Singapore Region.

        - Available services within a Region
        
            - Sometimes, the closest Region might not have all the features that you want to offer to customers. AWS is frequently innovating by creating new services and expanding on features within existing services. However, making new services available around the world sometimes requires AWS to build out physical hardware one Region at a time. 

            - Suppose that your developers want to build an application that uses Amazon Braket (AWS quantum computing platform). As of this course, Amazon Braket is not yet available in every AWS Region around the world, so your developers would have to run it in one of the Regions that already offers it.

        - Pricing
        
            - Suppose that you are considering running applications in both the United States and Brazil. The way Brazil’s tax structure is set up, it might cost 50% more to run the same workload out of the São Paulo Region compared to the Oregon Region. You will learn in more detail that several factors determine pricing, but for now know that the cost of services can vary from Region to Region.

# Availability Zones

![image](https://user-images.githubusercontent.com/57224583/141454928-1125d5a6-fd49-4335-b03e-a51d1c9bdab4.png)

- An Availability Zone is a single data center or a group of data centers within a Region. Availability Zones are located tens of miles apart from each other. This is close enough to have low latency (the time between when content requested and received) between Availability Zones. However, if a disaster occurs in one part of the Region, they are distant enough to reduce the chance that multiple Availability Zones are affected.

- Example

![image](https://user-images.githubusercontent.com/57224583/141455093-4f2d008a-3662-49fb-9272-73a2e2a549d9.png)

![image](https://user-images.githubusercontent.com/57224583/141455231-9eb782aa-ec03-4db7-9d61-68f136511858.png)

![image](https://user-images.githubusercontent.com/57224583/141455320-bc7dbd61-95b9-4eb5-baff-29d0d3bc82aa.png)

![image](https://user-images.githubusercontent.com/57224583/141455362-48bc44bf-1438-475b-b83f-20745598c6ad.png)

# Edge location

![image](https://user-images.githubusercontent.com/57224583/141455565-5c318196-f723-4bca-9f18-862429e08b43.png)

- An edge location is a site that Amazon CloudFront uses to store cached copies of your content closer to your customers for faster delivery.

![image](https://user-images.githubusercontent.com/57224583/141455652-aa86d246-b623-4b76-bebf-8944dd2c6265.png)

# How to provision AWS resources

![image](https://user-images.githubusercontent.com/57224583/141455857-7d5b819f-cb0a-4362-a026-24ebe725997f.png)

![image](https://user-images.githubusercontent.com/57224583/141455981-c9b006b8-cf19-4073-b57f-022e1dca7d63.png)

- Ways to interact with AWS services
    
    - AWS Management Console

        - The AWS Management Console is a web-based interface for accessing and managing AWS services. You can quickly access recently used services and search for other services by name, keyword, or acronym. The console includes wizards and automated workflows that can simplify the process of completing tasks.

        - You can also use the AWS Console mobile application to perform tasks such as monitoring resources, viewing alarms, and accessing billing information. Multiple identities can stay logged into the AWS Console mobile app at the same time.

    - AWS Command Line Interface (AWS CLI)
        - To save time when making API requests, you can use the AWS Command Line Interface (AWS CLI). AWS CLI enables you to control multiple AWS services directly from the command line within one tool. AWS CLI is available for users on Windows, macOS, and Linux. 

        - By using AWS CLI, you can automate the actions that your services and applications perform through scripts. For example, you can use commands to launch an Amazon EC2 instance, connect an Amazon EC2 instance to a specific Auto Scaling group, and more.
    
    - AWS Software Development Kit(SDK)

        - Another option for accessing and managing AWS services is the software development kits (SDKs). SDKs make it easier for you to use AWS services through an API designed for your programming language or platform. SDKs enable you to use AWS services with your existing applications or create entirely new applications that will run on AWS.

        - To help you get started with using SDKs, AWS provides documentation and sample code for each supported programming language. Supported programming languages include C++, Java, .NET, and more.

- AWS Elastic Load Balancer
    
    ![image](https://user-images.githubusercontent.com/57224583/141456477-e3824788-46cf-4848-ac72-d9ae809455c0.png)
    
    - With AWS Elastic Beanstalk, you provide code and configuration settings, and Elastic Beanstalk deploys the resources necessary to perform the following tasks:

        - Adjust capacity
        - Load balancing
        - Automatic scaling
        - Application health monitoring

- AWS CloudFormation

    ![image](https://user-images.githubusercontent.com/57224583/141456770-779c181b-27ce-4353-bf0d-3c13a0725e13.png)

    - With AWS CloudFormation, you can treat your infrastructure as code. This means that you can build an environment by writing lines of code instead of using the AWS Management Console to individually provision resources.

    - AWS CloudFormation provisions your resources in a safe, repeatable manner, enabling you to frequently build your infrastructure and applications without having to perform manual actions or write custom scripts. It determines the right operations to perform when managing your stack and rolls back changes automatically if it detects errors.

- Additional resources

    - Review these resources to learn more about the concepts that were explored in Module 3.

        - [Global Infrastructure](https://aws.amazon.com/about-aws/global-infrastructure/)
        - [Interactive map of the AWS Global Infrastructure](https://www.infrastructure.aws/)
        - [Regions and Availability Zones](https://aws.amazon.com/about-aws/global-infrastructure/regions_az)
        - [AWS Networking and Content Delivery Blog](https://aws.amazon.com/blogs/networking-and-content-delivery/)
        - [Tools to Build on AWS](https://aws.amazon.com/tools/)
        - [AWS Customer Stories: Content Delivery](https://aws.amazon.com/solutions/case-studies/?customer-references-cards.sort-by=item.additionalFields.publishedDate&customer-references-cards.sort-order=desc&awsf.customer-references-location=*all&awsf.customer-references-segment=*all&awsf.customer-references-product=product%23vpc%7Cproduct%23api-gateway%7Cproduct%23cloudfront%7Cproduct%23route53%7Cproduct%23directconnect%7Cproduct%23elb&awsf.customer-references-category=category%23content-delivery)