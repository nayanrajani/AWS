# Module6- SECURITY

# Learning objectives

- In this module, you will learn how to:

    - Explain the benefits of the shared responsibility model.
    - Describe multi-factor authentication (MFA).
    - Differentiate between the AWS Identity and Access Management (IAM) security levels.
    - Explain the main benefits of AWS Organizations.
    - Describe security policies at a basic level.
    - Summarize the benefits of compliance with AWS.
    - Explain additional AWS security services at a basic level.

# Shared responsibility model

- The AWS shared responsibility model

    - Throughout this course, you have learned about a variety of resources that you can create in the AWS Cloud. These resources include Amazon EC2 instances, Amazon S3 buckets, and Amazon RDS databases. Who is responsible for keeping these resources secure: you (the customer) or AWS?

    - The answer is both. The reason is that you do not treat your AWS environment as a single object. Rather, you treat the environment as a collection of parts that build upon each other. AWS is responsible for some parts of your environment and you (the customer) are responsible for other parts. This concept is known as the shared responsibility model.

    - The shared responsibility model divides into customer responsibilities (commonly referred to as “security in the cloud”) and AWS responsibilities (commonly referred to as “security of the cloud”).

    ![image](https://user-images.githubusercontent.com/57224583/141467456-6ae0116b-65fa-4767-95ca-9547a8dea91d.png)

    - You can think of this model as being similar to the division of responsibilities between a homeowner and a homebuilder. The builder (AWS) is responsible for constructing your house and ensuring that it is solidly built. As the homeowner (the customer), it is your responsibility to secure everything in the house by ensuring that the doors are closed and locked.

- Customers: Security in the cloud

    - Customers are responsible for the security of everything that they create and put in the AWS Cloud.

    - When using AWS services, you, the customer, maintain complete control over your content. You are responsible for managing security requirements for your content, including which content you choose to store on AWS, which AWS services you use, and who has access to that content. You also control how access rights are granted, managed, and revoked.

    - The security steps that you take will depend on factors such as the services that you use, the complexity of your systems, and your company’s specific operational and security needs. Steps include selecting, configuring, and patching the operating systems that will run on Amazon EC2 instances, configuring security groups, and managing user accounts. 

- AWS: Security of the cloud

    - AWS is responsible for security of the cloud.

    - AWS operates, manages, and controls the components at all layers of infrastructure. This includes areas such as the host operating system, the virtualization layer, and even the physical security of the data centers from which services operate. 

    - AWS is responsible for protecting the global infrastructure that runs all of the services offered in the AWS Cloud. This infrastructure includes AWS Regions, Availability Zones, and edge locations.

    - AWS manages the security of the cloud, specifically the physical infrastructure that hosts your resources, which include:

        - Physical security of data centers
        - Hardware and software infrastructure
        - Network infrastructure
        - Virtualization infrastructure

    - Although you cannot visit AWS data centers to see this protection firsthand, AWS provides several reports from third-party auditors. These auditors have verified its compliance with a variety of computer security standards and regulations.

# User permissions and access

- AWS Identity and Access Management (IAM)

    - AWS Identity and Access Management (IAM) enables you to manage access to AWS services and resources securely.   

    - IAM gives you the flexibility to configure access based on your company’s specific operational and security needs. You do this by using a combination of IAM features, which are explored in detail in this lesson:

        - IAM users, groups, and roles
        - IAM policies
        - Multi-factor authentication
    - You will also learn best practices for each of these features.

- AWS account root user

    - When you first create an AWS account, you begin with an identity known as the root user. 

    - The root user is accessed by signing in with the email address and password that you used to create your AWS account. You can think of the root user as being similar to the owner of the coffee shop. It has complete access to all the AWS services and resources in the account.

    ![image](https://user-images.githubusercontent.com/57224583/141468113-bf07a565-afd8-43ff-8254-21cf380b69a6.png)

    ![image](https://user-images.githubusercontent.com/57224583/141468701-b275754a-5aa3-4811-aaf2-01c17e8b64b5.png)

- IAM users

    - An IAM user is an identity that you create in AWS. It represents the person or application that interacts with AWS services and resources. It consists of a name and credentials.

    - By default, when you create a new IAM user in AWS, it has no permissions associated with it. To allow the IAM user to perform specific actions in AWS, such as launching an Amazon EC2 instance or creating an Amazon S3 bucket, you must grant the IAM user the necessary permissions.

    ![image](https://user-images.githubusercontent.com/57224583/141468772-9b8b6257-24ef-4148-923f-cd175550a549.png)

- IAM policies

    - An IAM policy is a document that allows or denies permissions to AWS services and resources.  

    - IAM policies enable you to customize users’ levels of access to resources. For example, you can allow users to access all of the Amazon S3 buckets within your AWS account, or only a specific bucket.

    ![image](https://user-images.githubusercontent.com/57224583/141468842-2cfa4ce3-8a3f-47d1-96eb-c41899592360.png)

    - Example: IAM policy

        - Here’s an example of how IAM policies work. Suppose that the coffee shop owner has to create an IAM user for a newly hired cashier. The cashier needs access to the receipts kept in an Amazon S3 bucket with the ID: AWSDOC-EXAMPLE-BUCKET.

        ![image](https://user-images.githubusercontent.com/57224583/141468932-31c5a0db-6e77-4a22-8758-53aa4a60ea8b.png)
        This example IAM policy allows permission to access the objects in the Amazon S3 bucket with ID: AWSDOC-EXAMPLE-BUCKET.

        - In this example, the IAM policy is allowing a specific action within Amazon S3: ListObject. The policy also mentions a specific bucket ID: AWSDOC-EXAMPLE-BUCKET. When the owner attaches this policy to the cashier’s IAM user, it will allow the cashier to view all of the objects in the AWSDOC-EXAMPLE-BUCKET bucket. 

        - If the owner wants the cashier to be able to access other services and perform other actions in AWS, the owner must attach additional policies to specify these services and actions.

        - Now, suppose that the coffee shop has hired a few more cashiers. Instead of assigning permissions to each individual IAM user, the owner places the users into an IAM group.

- IAM groups

    - An IAM group is a collection of IAM users. When you assign an IAM policy to a group, all users in the group are granted permissions specified by the policy.

    - Here’s an example of how this might work in the coffee shop. Instead of assigning permissions to cashiers one at a time, the owner can create a “Cashiers” IAM group. The owner can then add IAM users to the group and then attach permissions at the group level.

    ![image](https://user-images.githubusercontent.com/57224583/141469095-130f0849-ca47-4d76-9bc8-789c8d14895c.png) 

    - Assigning IAM policies at the group level also makes it easier to adjust permissions when an employee transfers to a different job. For example, if a cashier becomes an inventory specialist, the coffee shop owner removes them from the “Cashiers” IAM group and adds them into the “Inventory Specialists” IAM group. This ensures that employees have only the permissions that are required for their current role.

    - What if a coffee shop employee hasn’t switched jobs permanently, but instead, rotates to different workstations throughout the day? This employee can get the access they need through IAM roles.

- IAM roles

    - In the coffee shop, an employee rotates to different workstations throughout the day. Depending on the staffing of the coffee shop, this employee might perform several duties: work at the cash register, update the inventory system, process online orders, and so on. 

    - When the employee needs to switch to a different task, they give up their access to one workstation and gain access to the next workstation. The employee can easily switch between workstations, but at any given point in time, they can have access to only a single workstation. This same concept exists in AWS with IAM roles.

    - An IAM role is an identity that you can assume to gain temporary access to permissions.  

    - Before an IAM user, application, or service can assume an IAM role, they must be granted permissions to switch to the role. When someone assumes an IAM role, they abandon all previous permissions that they had under a previous role and assume the permissions of the new role. 
        
        - Best practice:

            - IAM roles are ideal for situations in which access to services or resources needs to be granted temporarily, instead of long-term. 

- Multi-factor authentication

    - Have you ever signed in to a website that required you to provide multiple pieces of information to verify your identity? You might have needed to provide your password and then a second form of authentication, such as a random code sent to your phone. This is an example of multi-factor authentication.

    - In IAM, multi-factor authentication (MFA) provides an extra layer of security for your AWS account.

# AWS Organizations

- Suppose that your company has multiple AWS accounts. You can use AWS Organizations to consolidate and manage multiple AWS accounts within a central location.

- When you create an organization, AWS Organizations automatically creates a root, which is the parent container for all the accounts in your organization. 

- In AWS Organizations, you can centrally control permissions for the accounts in your organization by using service control policies (SCPs). SCPs enable you to place restrictions on the AWS services, resources, and individual API actions that users and roles in each account can access.

    - Note:
        - Consolidated billing is another feature of AWS Organizations. You will learn about consolidated billing in a later module.

- Organizational units

    - In AWS Organizations, you can group accounts into organizational units (OUs) to make it easier to manage accounts with similar business or security requirements. When you apply a policy to an OU, all the accounts in the OU automatically inherit the permissions specified in the policy.  

    - By organizing separate accounts into OUs, you can more easily isolate workloads or applications that have specific security requirements. For instance, if your company has accounts that can access only the AWS services that meet certain regulatory requirements, you can put these accounts into one OU. Then, you can attach a policy to the OU that blocks access to all other AWS services that do not meet the regulatory requirements.

    - Example:

        ![image](https://user-images.githubusercontent.com/57224583/141469555-7fb580c5-64f2-46ae-a351-860892450b0e.png)

        ![image](https://user-images.githubusercontent.com/57224583/141469600-444e694f-25f8-4bd2-a323-0ad3bcf8e8f6.png)

        ![image](https://user-images.githubusercontent.com/57224583/141469649-8202926c-bf3f-47a9-b2e3-4f1f0ecc9a7e.png)

        ![image](https://user-images.githubusercontent.com/57224583/141469684-feed78f6-95ec-4ffa-8ef1-1e45acaf0168.png)

- Compliance

    - AWS Artifact

        - Depending on your company’s industry, you may need to uphold specific standards. An audit or inspection will ensure that the company has met those standards.

        - AWS Artifact is a service that provides on-demand access to AWS security and compliance reports and select online agreements. AWS Artifact consists of two main sections: AWS Artifact Agreements and AWS Artifact Reports.

        - AWS Artifact Agreements

            - Suppose that your company needs to sign an agreement with AWS regarding your use of certain types of information throughout AWS services. You can do this through AWS Artifact Agreements. 

            - In AWS Artifact Agreements, you can review, accept, and manage agreements for an individual account and for all your accounts in AWS Organizations. Different types of agreements are offered to address the needs of customers who are subject to specific regulations, such as the Health Insurance Portability and Accountability Act (HIPAA).

        - AWS Artifact Reports
          
            - Next, suppose that a member of your company’s development team is building an application and needs more information about their responsibility for complying with certain regulatory standards. You can advise them to access this information in AWS Artifact Reports.

            - AWS Artifact Reports provide compliance reports from third-party auditors. These auditors have tested and verified that AWS is compliant with a variety of global, regional, and industry-specific security standards and regulations. AWS Artifact Reports remains up to date with the latest reports released. You can provide the AWS audit artifacts to your auditors or regulators as evidence of AWS security controls. 

            - The following are some of the compliance reports and regulations that you can find within AWS Artifact. Each report includes a description of its contents and the reporting period for which the document is valid. 

        ![image](https://user-images.githubusercontent.com/57224583/141469924-6b6d629f-24d4-4be2-8677-6ef0f00165c8.png)

- Customer Compliance Center

    - The Customer Compliance Center contains resources to help you learn more about AWS compliance. 

    - In the Customer Compliance Center, you can read customer compliance stories to discover how companies in regulated industries have solved various compliance, governance, and audit challenges.

    - You can also access compliance whitepapers and documentation on topics such as:

        - AWS answers to key compliance questions
        - An overview of AWS risk and compliance
        - An auditing security checklist
    - Additionally, the Customer Compliance Center includes an auditor learning path. This learning path is designed for individuals in auditing, compliance, and legal roles who want to learn more about how their internal operations can demonstrate compliance using the AWS Cloud.      

- Denial-of-service Attacks 

    - Customers can call the coffee shop to place their orders. After answering each call, a cashier takes the order and gives it to the barista. 

    - However, suppose that a prankster is calling in multiple times to place orders but is never picking up their drinks. This causes the cashier to be unavailable to take other customers’ calls. The coffee shop can attempt to stop the false requests by blocking the phone number that the prankster is using. 

    - In this scenario, the prankster’s actions are similar to a denial-of-service attack.

- Denial-of-service attacks

    - A denial-of-service (DoS) attack is a deliberate attempt to make a website or application unavailable to users.

    ![image](https://user-images.githubusercontent.com/57224583/141470290-ff32b02f-aa7e-465d-aa13-028c0f76b963.png)
    For example, an attacker might flood a website or application with excessive network traffic until the targeted website or application becomes overloaded and is no longer able to respond. If the website or application becomes unavailable, this denies service to users who are trying to make legitimate requests.

- Distributed denial-of-service attacks

    - Now, suppose that the prankster has enlisted the help of friends. 

    - The prankster and their friends repeatedly call the coffee shop with requests to place orders, even though they do not intend to pick them up. These requests are coming in from different phone numbers, and it’s impossible for the coffee shop to block them all. Additionally, the influx of calls has made it increasingly difficult for customers to be able to get their calls through. This is similar to a distributed denial-of-service attack.

    ![image](https://user-images.githubusercontent.com/57224583/141470395-fa60f1d5-4e80-4816-8604-ad8ee2f0c324.png)

    - In a distributed denial-of-service (DDoS) attack, multiple sources are used to start an attack that aims to make a website or application unavailable. This can come from a group of attackers, or even a single attacker. The single attacker can use multiple infected computers (also known as “bots”) to send excessive traffic to a website or application.

    - To help minimize the effect of DoS and DDoS attacks on your applications, you can use AWS Shield.

- AWS Shield

    - AWS Shield is a service that protects applications against DDoS attacks. AWS Shield provides two levels of protection: Standard and Advanced.

    - AWS Shield Standard

        - AWS Shield Standard automatically protects all AWS customers at no cost. It protects your AWS resources from the most common, frequently occurring types of DDoS attacks. 

        - As network traffic comes into your applications, AWS Shield Standard uses a variety of analysis techniques to detect malicious traffic in real time and automatically mitigates it. 

    - AWS Shield Advanced
        
        - AWS Shield Advanced is a paid service that provides detailed attack diagnostics and the ability to detect and mitigate sophisticated DDoS attacks. 

        - It also integrates with other services such as Amazon CloudFront, Amazon Route 53, and Elastic Load Balancing. Additionally, you can integrate AWS Shield with AWS WAF by writing custom rules to mitigate complex DDoS attacks.

# Additional security services

- AWS Key Management Service (AWS KMS)

    - The coffee shop has many items, such as coffee machines, pastries, money in the cash registers, and so on. You can think of these items as data. The coffee shop owners want to ensure that all of these items are secure, whether they’re sitting in the storage room or being transported between shop locations. 

    - In the same way, you must ensure that your applications’ data is secure while in storage (encryption at rest) and while it is transmitted, known as encryption in transit.

    - [AWS Key Management Service (AWS KMS)](https://aws.amazon.com/kms) enables you to perform encryption operations through the use of cryptographic keys. A cryptographic key is a random string of digits used for locking (encrypting) and unlocking (decrypting) data. You can use AWS KMS to create, manage, and use cryptographic keys. You can also control the use of keys across a wide range of services and in your applications.

    - With AWS KMS, you can choose the specific levels of access control that you need for your keys. For example, you can specify which IAM users and roles are able to manage keys. Alternatively, you can temporarily disable keys so that they are no longer in use by anyone. Your keys never leave AWS KMS, and you are always in control of them.

- AWS WAF

    - [AWS WAF](https://aws.amazon.com/waf) is a web application firewall that lets you monitor network requests that come into your web applications. 

    - AWS WAF works together with Amazon CloudFront and an Application Load Balancer. Recall the network access control lists that you learned about in an earlier module. AWS WAF works in a similar way to block or allow traffic. However, it does this by using a web [access control list (ACL)](https://docs.aws.amazon.com/waf/latest/developerguide/web-acl.html) to protect your AWS resources. 

    - Here’s an example of how you can use AWS WAF to allow and block specific requests.

    ![image](https://user-images.githubusercontent.com/57224583/141470815-739b5b27-7019-4b2a-b023-3948e37340bd.png)

    - Suppose that your application has been receiving malicious network requests from several IP addresses. You want to prevent these requests from continuing to access your application, but you also want to ensure that legitimate users can still access it. You configure the web ACL to allow all requests except those from the IP addresses that you have specified.

    - When a request comes into AWS WAF, it checks against the list of rules that you have configured in the web ACL. If a request did not come from one of the blocked IP addresses, it allows access to the application.

    ![image](https://user-images.githubusercontent.com/57224583/141470876-092c62f5-1e4c-48d7-a594-83edcbe958f6.png)
    However, if a request came from one of the blocked IP addresses that you have specified in the web ACL, it is denied access.

- Amazon Inspector

    - Suppose that the developers at the coffee shop are developing and testing a new ordering application. They want to make sure that they are designing the application in accordance with security best practices. However, they have several other applications to develop, so they cannot spend much time conducting manual assessments. To perform automated security assessments, they decide to use [Amazon Inspector](https://aws.amazon.com/inspector/).

    - Amazon Inspector helps to improve the security and compliance of applications by running automated security assessments. It checks applications for security vulnerabilities and deviations from security best practices, such as open access to Amazon EC2 instances and installations of vulnerable software versions. 

    - After Amazon Inspector has performed an assessment, it provides you with a list of security findings. The list prioritizes by severity level, including a detailed description of each security issue and a recommendation for how to fix it. However, AWS does not guarantee that following the provided recommendations resolves every potential security issue. Under the shared responsibility model, customers are responsible for the security of their applications, processes, and tools that run on AWS services.

- Amazon GuardDuty

    - [Amazon GuardDuty](https://aws.amazon.com/guardduty) is a service that provides intelligent threat detection for your AWS infrastructure and resources. It identifies threats by continuously monitoring the network activity and account behavior within your AWS environment.

    ![image](https://user-images.githubusercontent.com/57224583/141471121-6f9dd138-e2f8-4254-9151-6cc389fd63a6.png)

    - After you have enabled GuardDuty for your AWS account, GuardDuty begins monitoring your network and account activity. You do not have to deploy or manage any additional security software. GuardDuty then continuously analyzes data from multiple AWS sources, including VPC Flow Logs and DNS logs. 

    - If GuardDuty detects any threats, you can review detailed findings about them from the AWS Management Console. Findings include recommended steps for remediation. You can also configure AWS Lambda functions to take remediation steps automatically in response to GuardDuty’s security findings.

- Additional resources

    - To learn more about the concepts that were explored in Module 6, review these resources.

        - [Security, Identity, and Compliance on AWS](https://aws.amazon.com/products/security)
        - [Whitepaper: Introduction to AWS Security](https://docs.aws.amazon.com/whitepapers/latest/introduction-aws-security/welcome.html)
        - [Whitepaper: Amazon Web Services - Overview of Security Processes](https://docs.aws.amazon.com/whitepapers/latest/aws-overview-security-processes/aws-overview-security-processes.pdf)
        - [AWS Security Blog](https://aws.amazon.com/blogs/security/)
        - [AWS Compliance](https://aws.amazon.com/compliance)
        - [AWS Customer Stories: Security, Identity, and Compliance](https://aws.amazon.com/solutions/case-studies/?customer-references-cards.sort-by=item.additionalFields.publishedDate&customer-references-cards.sort-order=desc&awsf.customer-references-location=*all&awsf.customer-references-segment=*all&awsf.customer-references-product=product%23vpc%7Cproduct%23api-gateway%7Cproduct%23cloudfront%7Cproduct%23route53%7Cproduct%23directconnect%7Cproduct%23elb&awsf.customer-references-category=category%23security-identity-compliance)