# PRICING AND SUPPORT

- Learning objectives

    - In this module, you will learn how to:

        - Describe AWS pricing and support models.
        - Describe the AWS Free Tier.
        - Describe key benefits of AWS Organizations and consolidated billing.
        - Explain the benefits of AWS Budgets.
        - Explain the benefits of AWS Cost Explorer.
        - Explain the primary benefits of the AWS Pricing Calculator.
        - Distinguish between the various AWS Support Plans.
        - Describe the benefits of AWS Marketplace.

# AWS Free Tier

- The [AWS Free Tier](https://aws.amazon.com/free/) enables you to begin using certain services without having to worry about incurring costs for the specified period. 

    - Three types of offers are available: 
        - Always Free
            - These offers do not expire and are available to all AWS customers.
            - For example, AWS Lambda allows 1 million free requests and up to 3.2 million seconds of compute time per month. Amazon DynamoDB allows 25 GB of free storage per month.

        - 12 Months Free
            - These offers are free for 12 months following your initial sign-up date to AWS.
            - Examples include specific amounts of Amazon S3 Standard Storage, thresholds for monthly hours of Amazon EC2 compute time, and amounts of Amazon CloudFront data transfer out.

        - Trials
            - Short-term free trial offers start from the date you activate a particular service. The length of each trial might vary by number of days or the amount of usage in the service.
            - For example, Amazon Inspector offers a 90-day free trial. Amazon Lightsail (a service that enables you to run virtual private servers) offers 750 free hours of usage over a 30-day period.

    - For each free tier offer, make sure to review the specific details about exactly which resource types are included. 

# AWS pricing concepts
- How AWS pricing works

    - AWS offers a range of cloud computing services with pay-as-you-go pricing. 

        - Pay for what you use.
            – For each service, you pay for exactly the amount of resources that you actually use, without requiring long-term contracts or complex licensing. 
        
        - Pay less when you reserve.
            – Some services offer reservation options that provide a significant discount compared to On-Demand Instance pricing.
            - For example, suppose that your company is using Amazon EC2 instances for a workload that needs to run continuously. You might choose to run this workload on Amazon EC2 Instance Savings Plans, because the plan allows you to save up to 72% over the equivalent On-Demand Instance capacity.

        - Pay less with volume-based discounts when you use more.
            – Some services offer tiered pricing, so the per-unit cost is incrementally lower with increased usage.
            - For example, the more Amazon S3 storage space you use, the less you pay for it per GB.

    # AWS Pricing Calculator
        - The AWS Pricing Calculator lets you explore AWS services and create an estimate for the cost of your use cases on AWS. You can organize your AWS estimates by groups that you define. A group can reflect how your company is organized, such as providing estimates by cost center.
        - When you have created an estimate, you can save it and generate a link to share it with others.

    ![image](https://user-images.githubusercontent.com/57224583/141106052-8e7c0be1-f018-4307-8a56-3b17d024885a.png)

    - Suppose that your company is interested in using Amazon EC2. However, you are not yet sure which AWS Region or instance type would be the most cost-efficient for your use case. In the AWS Pricing Calculator, you can enter details such as the kind of operating system you need, memory requirements, and input/output (I/O) requirements. By using the AWS Pricing Calculator, you can review an estimated comparison of different EC2 instance types across AWS Regions.

    - AWS pricing examples
        - This section presents a few examples of pricing in AWS services.
            - AWS Lambda Pricing
                - For AWS Lambda, you are charged based on the number of requests for your functions and the time that it takes for them to run.
                - AWS Lambda allows 1 million free requests and up to 3.2 million seconds of compute time per month.
                - You can save on AWS Lambda costs by signing up for a Compute Savings Plan. A Compute Savings Plan offers lower compute costs in exchange for committing to a consistent amount of usage over a 1-year or 3-year term. This is an example of paying less when you reserve.

                ![image](https://user-images.githubusercontent.com/57224583/141106586-2de4a1d3-2015-47d1-a48d-c5cca3c2ad19.png)

            - Amazon EC2 Pricing
                - With Amazon EC2, you pay for only the compute time that you use while your instances are running.
                - For some workloads, you can significantly reduce Amazon EC2 costs by using Spot Instances.
                - For example, suppose that you are running a batch processing job that is able to withstand interruptions. Using a Spot Instance would provide you with up to 90% cost savings while still meeting the availability requirements of your workload.
                - You can find additional cost savings for Amazon EC2 by considering Savings Plans and Reserved Instances.

                ![image](https://user-images.githubusercontent.com/57224583/141106834-74727f64-03f3-4317-99cd-9f960282cae4.png)

            - Amazon S3 Pricing
                - For Amazon S3 pricing, consider the following cost components:
                    - Storage - You pay for only the storage that you use. You are charged the rate to store objects in your Amazon S3 buckets based on your objects’ sizes, storage classes, and how long you have stored each object during the month.
                    - Requests and data retrievals - You pay for requests made to your Amazon S3 objects and buckets. For example, suppose that you are storing photo files in Amazon S3 buckets and hosting them on a website. Every time a visitor requests the website that includes these photo files, this counts towards requests you must pay for.
                    - Data transfer - There is no cost to transfer data between different Amazon S3 buckets or from Amazon S3 to other services within the same AWS Region. However, you pay for data that you transfer into and out of Amazon S3, with a few exceptions. There is no cost for data transferred into Amazon S3 from the internet or out to Amazon CloudFront. There is also no cost for data transferred out to an Amazon EC2 instance in the same AWS Region as the Amazon S3 bucket.
                    - Management and replication - You pay for the storage management features that you have enabled on your account’s Amazon S3 buckets. These features include Amazon S3 inventory, analytics, and object tagging.

                    ![image](https://user-images.githubusercontent.com/57224583/141107097-7a3a3c32-01e4-4496-9b18-26d2e8dc4947.png)

    # Billing Dashboard

    - Use the [AWS Billing & Cost Management dashboard](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/billing-what-is.html) to pay your AWS bill, monitor your usage, and analyze and control your costs.

        - Compare your current month-to-date balance with the previous month, and get a forecast of the next month based on current usage.
        - View month-to-date spend by service.
        - View Free Tier usage by service.
        - Access Cost Explorer and create budgets.
        - Purchase and manage Savings Plans.
        - Publish [AWS Cost and Usage Reports](https://docs.aws.amazon.com/cur/latest/userguide/what-is-cur.html).

    # Consolidated billing
    ![image](https://user-images.githubusercontent.com/57224583/141112089-1ff0efd6-1fe3-4a07-b333-468d53c079b2.png)

    - In an earlier module, you learned about AWS Organizations, a service that enables you to manage multiple AWS accounts from a central location. AWS Organizations also provides the option for [consolidated billing](https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/consolidated-billing.html). 

    - The consolidated billing feature of AWS Organizations enables you to receive a single bill for all AWS accounts in your organization. By consolidating, you can easily track the combined costs of all the linked accounts in your organization. The default maximum number of accounts allowed for an organization is 4, but you can contact AWS Support to increase your quota, if needed.

    - On your monthly bill, you can review itemized charges incurred by each account. This enables you to have greater transparency into your organization’s accounts while still maintaining the convenience of receiving a single monthly bill.

    - Another benefit of consolidated billing is the ability to share bulk discount pricing, Savings Plans, and Reserved Instances across the accounts in your organization. For instance, one account might not have enough monthly usage to qualify for discount pricing. However, when multiple accounts are combined, their aggregated usage may result in a benefit that applies across all accounts in the organization.

    - Exmaple:
        - Step 1:

        ![image](https://user-images.githubusercontent.com/57224583/141112280-43902ef9-ce29-4bc8-ab65-152b7301721f.png)

            - Suppose that you are the business leader who oversees your company’s AWS billing. 

            - Your company has three AWS accounts used for separate departments. Instead of paying each location’s monthly bill separately, you decide to create an organization and add the three accounts. 

            - You manage the organization through the primary account.
        - Step 2:

        ![image](https://user-images.githubusercontent.com/57224583/141112447-22d8a560-0401-4fdf-acc3-b60e4ca2cb01.png)

            - Each month, AWS charges your primary payer account for all the linked accounts in a consolidated bill. Through the primary account, you can also get a detailed cost report for each linked account. 

            - The monthly consolidated bill also includes the account usage costs incurred by the primary account. This cost is not a premium charge for having a primary account. 

            - The consolidated bill shows the costs associated with any actions of the primary account (such as storing files in Amazon S3 or running Amazon EC2 instances).

        - Step 3:

        ![image](https://user-images.githubusercontent.com/57224583/141112645-6e84776d-3311-43f3-ad47-a92c2c7af123.png)

            - Consolidated billing also enables you to share volume pricing discounts across accounts. 

            - Some AWS services, such as Amazon S3, provide volume pricing discounts that give you lower prices the more that you use the service. In Amazon S3, after customers have transferred 10 TB of data in a month, they pay a lower per-GB transfer price for the next 40 TB of data transferred. 

            - In this example, there are three separate AWS accounts that have transferred different amounts of data in Amazon S3 during the current month: 

                - Account 1 has transferred 2 TB of data.
                - Account 2 has transferred 5 TB of data.
                - Account 3 has transferred 7 TB of data.
            
            - Because no single account has passed the 10 TB threshold, none of them is eligible for the lower per-GB transfer price for the next 40 TB of data transferred.
        
        -Final Step: 
                ![image](https://user-images.githubusercontent.com/57224583/141112778-6d7545b3-8ac6-49c0-bd6e-36a385b1c3dd.png)

            - Now, suppose that these three separate accounts are brought together as linked accounts within a single AWS organization and are using consolidated billing.

            - When the Amazon S3 usage for the three linked accounts is combined (2+5+7), this results in a combined data transfer amount of 14 TB. This exceeds the 10-TB threshold. 

            - With consolidated billing, AWS combines the usage from all accounts to determine which volume pricing tiers to apply, giving you a lower overall price whenever possible. AWS then allocates each linked account a portion of the overall volume discount based on the account's usage. 

            - In this example, Account 3 would receive a greater portion of the overall volume discount because at 7 TB, it has transferred more data than Account 1 (at 2 TB) and Account 2 (at 5 TB).

    # AWS Budgets

    - In AWS Budgets, you can create budgets to plan your service usage, service costs, and instance reservations.

    - The information in AWS Budgets updates three times a day. This helps you to accurately determine how close your usage is to your budgeted amounts or to the AWS Free Tier limits.

    - In AWS Budgets, you can also set custom alerts when your usage exceeds (or is forecasted to exceed) the budgeted amount.

    - Example: AWS Budgets

        - Suppose that you have set a budget for Amazon EC2. You want to ensure that your company’s usage of Amazon EC2 does not exceed $200 for the month. 

        - In AWS Budgets, you could set a custom budget to notify you when your usage has reached half of this amount ($100). This setting would allow you to receive an alert and decide how you would like to proceed with your continued use of Amazon EC2.

        - To learn more, select each marker.

        ![image](https://user-images.githubusercontent.com/57224583/141116184-1af69a04-f569-4a94-a208-a9316b06a178.png)

    # AWS Cost Explorer

    - [AWS Cost Explorer](https://aws.amazon.com/aws-cost-management/aws-cost-explorer/) is a tool that enables you to visualize, understand, and manage your AWS costs and usage over time.

    - AWS Cost Explorer includes a default report of the costs and usage for your top five cost-accruing AWS services. You can apply custom filters and groups to analyze your data. For example, you can view resource usage at the hourly level.

    - Example: AWS Cost Explorer

    ![image](https://user-images.githubusercontent.com/57224583/141250913-b641d181-521c-47ef-8f21-a62aa6e7f64b.png)

        - This example of the AWS Cost Explorer dashboard displays monthly costs for Amazon EC2 instances over a 6-month period. The bar for each month separates the costs for different Amazon EC2 instance types (such as t2.micro or m3.large). 

        - By analyzing your AWS costs over time, you can make informed decisions about future costs and how to plan your budgets.

    # AWS Support Plans

    - AWS offers four different Support plans to help you troubleshoot issues, lower costs, and efficiently use AWS services. 

        - You can choose from the following Support plans to meet your company’s needs: 

            - Basic
            - Developer
            - Business
            - Enterprise

        - Basic Support

        ![image](https://user-images.githubusercontent.com/57224583/141252852-ed97faa3-df57-452b-9883-056ef364d632.png)

            - Basic Support is free for all AWS customers. It includes access to whitepapers, documentation, and support communities. With Basic Support, you can also contact AWS for billing questions and service limit increases.

            - With Basic Support, you have access to a limited selection of AWS Trusted Advisor checks. Additionally, you can use the AWS Personal Health Dashboard, a tool that provides alerts and remediation guidance when AWS is experiencing events that may affect you. 

            - If your company needs support beyond the Basic level, you could consider purchasing Developer, Business, or Enterprise Support.

        - Developer, Business, and Enterprise Support

            - The Developer, Business, and Enterprise Support plans include all the benefits of Basic Support, in addition to the ability to open an unrestricted number of technical support cases. These three Support plans have pay-by-the-month pricing and require no long-term contracts.

            - The information in this course highlights only a selection of details for each Support plan. A complete overview of what is included in each Support plan, including pricing for each plan, is available on the [AWS Support site](https://aws.amazon.com/premiumsupport/plans/).

            - In general, for pricing, the Developer plan has the lowest cost, the Business plan is in the middle, and the Enterprise plan has the highest cost. 


        - Developer Support

        ![image](https://user-images.githubusercontent.com/57224583/141252940-5ff91dea-d999-4aba-9c98-da865abf9eba.png)
        
            - Customers in the Developer Support plan have access to features such as:

                - Best practice guidance
                - Client-side diagnostic tools
                - Building-block architecture support, which consists of guidance for how to use AWS offerings, features, and services together
            - For example, suppose that your company is exploring AWS services. You’ve heard about a few different AWS services. However, you’re unsure of how to potentially use them together to build applications that can address your company’s needs. In this scenario, the building-block architecture support that is included with the Developer Support plan could help you to identify opportunities for combining specific services and features.

        - Business Support

        ![image](https://user-images.githubusercontent.com/57224583/141253041-8bf504dc-5612-496b-9e2c-a2061617ce2f.png)
        
            - Customers with a Business Support plan have access to additional features, including: 

                - Use-case guidance to identify AWS offerings, features, and services that can best support your specific needs
                - All AWS Trusted Advisor checks
                - Limited support for third-party software, such as common operating systems and application stack components
            - Suppose that your company has the Business Support plan and wants to install a common third-party operating system onto your Amazon EC2 instances. You could contact AWS Support for assistance with installing, configuring, and troubleshooting the operating system. For advanced topics such as optimizing performance, using custom scripts, or resolving security issues, you may need to contact the third-party software provider directly.

        - Enterprise Support

        ![image](https://user-images.githubusercontent.com/57224583/141253146-eb29a328-fa93-453d-872a-67d153b4947f.png)
        
            - In addition to all the features included in the Basic, Developer, and Business Support plans, customers with an Enterprise Support plan have access to features such as:

                - Application architecture guidance, which is a consultative relationship to support your company’s specific use cases and applications
                - Infrastructure event management: A short-term engagement with AWS Support that helps your company gain a better understanding of your use cases. This also provides your company with architectural and scaling guidance.
                - A Technical Account Manager

        - Technical Account Manager (TAM)

        ![image](https://user-images.githubusercontent.com/57224583/141253209-58dc61f5-5c57-4870-91ee-d49aecbc06f8.png)

            - The Enterprise Support plan includes access to a Technical Account Manager (TAM).

            - If your company has an Enterprise Support plan, the TAM is your primary point of contact at AWS. They provide guidance, architectural reviews, and ongoing communication with your company as you plan, deploy, and optimize your applications. 

            - Your TAM provides expertise across the full range of AWS services. They help you design solutions that efficiently use multiple services together through an integrated approach.

            - For example, suppose that you are interested in developing an application that uses several AWS services together. Your TAM could provide insights into how to best use the services together. They achieve this, while aligning with the specific needs that your company is hoping to address through the new application.

    # AWS Marketplace

    ![image](https://user-images.githubusercontent.com/57224583/141254591-e9e09ba0-95a6-46c6-92d5-ba7d70c4178a.png)

    - [AWS Marketplace](https://aws.amazon.com/marketplace) is a digital catalog that includes thousands of software listings from independent software vendors. You can use AWS Marketplace to find, test, and buy software that runs on AWS. 

    - For each listing in AWS Marketplace, you can access detailed information on pricing options, available support, and reviews from other AWS customers.

    - You can also explore software solutions by industry and use case. For example, suppose that your company is in the healthcare industry. In AWS Marketplace, you can review use cases that software helps you to address, such as implementing solutions to protect patient records or using machine learning models to analyze a patient’s medical history and predict possible health risks.

    - AWS Marketplace categories

    ![image](https://user-images.githubusercontent.com/57224583/141254086-5b12d4cc-701d-4895-a186-bbc86fb4b828.png)
        
        - AWS Marketplace offers products in several categories, such as Infrastructure Products, Business Applications, Data Products, and DevOps.

        - Within each category, you can narrow your search by browsing through product listings in subcategories. For example, subcategories in the DevOps category include areas such as Application Development, Monitoring, and Testing.

    # Additional resources
    - To learn more about the concepts that were explored in Module 8, review these resources.

        - [AWS Pricing](https://aws.amazon.com/pricing)
        - [AWS Free Tier](https://aws.amazon.com/free)
        - [AWS Cost Management](https://aws.amazon.com/aws-cost-management/)
        - [Whitepaper: How AWS Pricing Works](https://d1.awsstatic.com/whitepapers/aws_pricing_overview.pdf)
        - [Whitepaper: Introduction to AWS Economics](https://d1.awsstatic.com/whitepapers/aws_pricing_overview.pdf)
        - [AWS Support](https://aws.amazon.com/premiumsupport)
        - [AWS Knowledge Center](https://aws.amazon.com/premiumsupport/knowledge-center/)


