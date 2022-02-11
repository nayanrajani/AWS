# Module 2- COMPUTE IN THE CLOUD

# Learning objectives

- In this module, you will learn how to:

    - Describe the benefits of Amazon EC2 at a basic level.
    - Identify the different Amazon EC2 instance types.
    - Differentiate between the various billing options for Amazon EC2.
    - Summarize the benefits of Amazon EC2 Auto Scaling.
    - Summarize the benefits of Elastic Load Balancing.
    - Give an example of the uses for Elastic Load Balancing.
    - Summarize the differences between Amazon Simple Notification Service (Amazon SNS) and Amazon Simple Queue Service (Amazon SQS).
    - Summarize additional AWS compute options.

# Amazon Elastic Compute Cloud (Amazon EC2)

![image](https://user-images.githubusercontent.com/57224583/141425679-fe7766ac-adb7-47f6-9187-84dbb83fb48c.png)

![image](https://user-images.githubusercontent.com/57224583/141425789-d48b74e5-e07f-4be3-9422-92e03c782db9.png)

- [Amazon Elastic Compute Cloud (Amazon EC2)](https://aws.amazon.com/ec2/) provides secure, resizable compute capacity in the cloud as Amazon EC2 instances. 

    - Imagine you are responsible for the architecture of your company's resources and need to support new websites. With traditional on-premises resources, you have to do the following:

        - Spend money upfront to purchase hardware.
        - Wait for the servers to be delivered to you.
        - Install the servers in your physical data center.
        - Make all the necessary configurations.

    - By comparison, with an Amazon EC2 instance you can use a virtual server to run applications in the AWS Cloud.

        - You can provision and launch an Amazon EC2 instance within minutes.
        - You can stop using it when you have finished running a workload.
        - You pay only for the compute time you use when an instance is running, not when it is stopped or terminated.
        - You can save costs by paying only for server capacity that you need or want.

    - How Amazon EC2 works

        ![image](https://user-images.githubusercontent.com/57224583/141425423-5e8a4050-c08d-40e0-a383-4d2053cd1905.png)

# Amazon EC2 instance types

- Amazon EC2 instance types are optimized for different tasks. When selecting an instance type, consider the specific needs of your workloads and applications. This might include requirements for compute, memory, or storage capabilities.

    - General purpose instances
    
        - General purpose instances provide a balance of compute, memory, and networking resources. You can use them for a variety of workloads, such as:

            - application servers
            - gaming servers
            - backend servers for enterprise applications
            - small and medium databases

        - Suppose that you have an application in which the resource needs for compute, memory, and networking are roughly equivalent. You might consider running it on a general purpose instance because the application does not require optimization in any single resource area.

    - Compute optimized instances
    
        - Compute optimized instances are ideal for compute-bound applications that benefit from high-performance processors. Like general purpose instances, you can use compute optimized instances for workloads such as web, application, and gaming servers.

        - However, the difference is compute optimized applications are ideal for high-performance web servers, compute-intensive applications servers, and dedicated gaming servers. You can also use compute optimized instances for batch processing workloads that require processing many transactions in a single group.

    - Memory optimized instances
    
        - Memory optimized instances are designed to deliver fast performance for workloads that process large datasets in memory. In computing, memory is a temporary storage area. It holds all the data and instructions that a central processing unit (CPU) needs to be able to complete actions. Before a computer program or application is able to run, it is loaded from storage into memory. This preloading process gives the CPU direct access to the computer program.

        - Suppose that you have a workload that requires large amounts of data to be preloaded before running an application. This scenario might be a high-performance database or a workload that involves performing real-time processing of a large amount of unstructured data. In these types of use cases, consider using a memory optimized instance. Memory optimized instances enable you to run workloads with high memory needs and receive great performance.

    - Accelerated computing instances
    
        - Accelerated computing instances use hardware accelerators, or coprocessors, to perform some functions more efficiently than is possible in software running on CPUs. Examples of these functions include floating-point number calculations, graphics processing, and data pattern matching.

        - In computing, a hardware accelerator is a component that can expedite data processing. Accelerated computing instances are ideal for workloads such as graphics applications, game streaming, and application streaming.

    - Storage optimized instances
    
        - Storage optimized instances are designed for workloads that require high, sequential read and write access to large datasets on local storage. Examples of workloads suitable for storage optimized instances include distributed file systems, data warehousing applications, and high-frequency online transaction processing (OLTP) systems.

        - In computing, the term input/output operations per second (IOPS) is a metric that measures the performance of a storage device. It indicates how many different input or output operations a device can perform in one second. Storage optimized instances are designed to deliver tens of thousands of low-latency, random IOPS to applications. 

        - You can think of input operations as data put into a system, such as records entered into a database. An output operation is data generated by a server. An example of output might be the analytics performed on the records in a database. If you have an application that has a high IOPS requirement, a storage optimized instance can provide better performance over other instance types not optimized for this kind of use case.

# Amazon EC2 pricing

![image](https://user-images.githubusercontent.com/57224583/141426555-b01e90d2-7b65-419b-9658-d58422ef696c.png)

- With Amazon EC2, you pay only for the compute time that you use. Amazon EC2 offers a variety of pricing options for different use cases. For example, if your use case can withstand interruptions, you can save with Spot Instances. You can also save by committing early and locking in a minimum level of use with Reserved Instances.

- Structure:

    - On-Demand
    
        - On-Demand Instances are ideal for short-term, irregular workloads that cannot be interrupted. No upfront costs or minimum contracts apply. The instances run continuously until you stop them, and you pay for only the compute time you use.

        - Sample use cases for On-Demand Instances include developing and testing applications and running applications that have unpredictable usage patterns. On-Demand Instances are not recommended for workloads that last a year or longer because these workloads can experience greater cost savings using Reserved Instances.

    - Amazon EC2 Savings Plans
    
        - AWS offers Savings Plans for several compute services, including Amazon EC2. Amazon EC2 Savings Plans enable you to reduce your compute costs by committing to a consistent amount of compute usage for a 1-year or 3-year term. This term commitment results in savings of up to 72% over On-Demand costs.

        - Any usage up to the commitment is charged at the discounted Savings Plan rate (for example, $10 an hour). Any usage beyond the commitment is charged at regular On-Demand rates.

        - Later in this course, you will review AWS Cost Explorer, a tool that enables you to visualize, understand, and manage your AWS costs and usage over time. If you are considering your options for Savings Plans, AWS Cost Explorer can analyze your Amazon EC2 usage over the past 7, 30, or 60 days. AWS Cost Explorer also provides customized recommendations for Savings Plans. These recommendations estimate how much you could save on your monthly Amazon EC2 costs, based on previous Amazon EC2 usage and the hourly commitment amount in a 1-year or 3-year Savings Plan.

    - Reserved Instances
    
        - Reserved Instances are a billing discount applied to the use of On-Demand Instances in your account. You can purchase Standard Reserved and Convertible Reserved Instances for a 1-year or 3-year term, and Scheduled Reserved Instances for a 1-year term. You realize greater cost savings with the 3-year option.

        - At the end of a Reserved Instance term, you can continue using the Amazon EC2 instance without interruption. However, you are charged On-Demand rates until you do one of the following:

        - Terminate the instance.
        
        - Purchase a new Reserved Instance that matches the instance attributes (instance type, Region, tenancy, and platform).
    
    - Spot Instances
    
        - Spot Instances are ideal for workloads with flexible start and end times, or that can withstand interruptions. Spot Instances use unused Amazon EC2 computing capacity and offer you cost savings at up to 90% off of On-Demand prices.

        - Suppose that you have a background processing job that can start and stop as needed (such as the data processing job for a customer survey). You want to start and stop the processing job without affecting the overall operations of your business. If you make a Spot request and Amazon EC2 capacity is available, your Spot Instance launches. However, if you make a Spot request and Amazon EC2 capacity is unavailable, the request is not successful until capacity becomes available. The unavailable capacity might delay the launch of your background processing job.

        - After you have launched a Spot Instance, if capacity is no longer available or demand for Spot Instances increases, your instance may be interrupted. This might not pose any issues for your background processing job. However, in the earlier example of developing and testing applications, you would most likely want to avoid unexpected interruptions. Therefore, choose a different EC2 instance type that is ideal for those tasks.

    - Dedicated Hosts
    
        - Dedicated Hosts are physical servers with Amazon EC2 instance capacity that is fully dedicated to your use. 

        - You can use your existing per-socket, per-core, or per-VM software licenses to help maintain license compliance. You can purchase On-Demand Dedicated Hosts and Dedicated Hosts Reservations. Of all the Amazon EC2 options that were covered, Dedicated Hosts are the most expensive.

# Scaling Amazon EC2

- Scaling Part-1

    - Scalability

        - Scalability involves beginning with only the resources you need and designing your architecture to automatically respond to changing demand by scaling out or in. As a result, you pay for only the resources you use. You don’t have to worry about a lack of computing capacity to meet your customers’ needs.

        - If you wanted the scaling process to happen automatically, which AWS service would you use? The AWS service that provides this functionality for Amazon EC2 instances is Amazon EC2 Auto Scaling.

    - Amazon EC2 Auto Scaling

        - If you’ve tried to access a website that wouldn’t load and frequently timed out, the website might have received more requests than it was able to handle. This situation is similar to waiting in a long line at a coffee shop, when there is only one barista present to take orders from customers.

        ![image](https://user-images.githubusercontent.com/57224583/141427284-6a3dc422-da76-42f6-bf27-f660f9dfc6d7.png)

        - Bar graph depicting demand and unused capacity over a 7-day period
        Amazon EC2 Auto Scaling enables you to automatically add or remove Amazon EC2 instances in response to changing application demand. By automatically scaling your instances in and out as needed, you are able to maintain a greater sense of application availability.

        - Within Amazon EC2 Auto Scaling, you can use two approaches: dynamic scaling and predictive scaling.

        - Dynamic scaling responds to changing demand. 
        Predictive scaling automatically schedules the right number of Amazon EC2 instances based on predicted demand.

- Scaling Part-2

    - Example: Amazon EC2 Auto Scaling

        - In the cloud, computing power is a programmatic resource, so you can take a more flexible approach to the issue of scaling. By adding Amazon EC2 Auto Scaling to an application, you can add new instances to the application when necessary and terminate them when no longer needed.

        - Suppose that you are preparing to launch an application on Amazon EC2 instances. When configuring the size of your Auto Scaling group, you might set the minimum number of Amazon EC2 instances at one. This means that at all times, there must be at least one Amazon EC2 instance running.

        ![image](https://user-images.githubusercontent.com/57224583/141427464-ea4ad00f-46a4-44e5-a95e-47c6ae7e6318.png)

        - When you create an Auto Scaling group, you can set the minimum number of Amazon EC2 instances. The minimum capacity is the number of Amazon EC2 instances that launch immediately after you have created the Auto Scaling group. In this example, the Auto Scaling group has a minimum capacity of one Amazon EC2 instance.

        - Next, you can set the desired capacity at two Amazon EC2 instances even though your application needs a minimum of a single Amazon EC2 instance to run.

            - Note: If you do not specify the desired number of Amazon EC2 instances in an Auto Scaling group, the desired capacity defaults to your minimum capacity.

        - The third configuration that you can set in an Auto Scaling group is the maximum capacity. For example, you might configure the Auto Scaling group to scale out in response to increased demand, but only to a maximum of four Amazon EC2 instances.

        - Because Amazon EC2 Auto Scaling uses Amazon EC2 instances, you pay for only the instances you use, when you use them. You now have a cost-effective architecture that provides the best customer experience while reducing expenses.

# Directing traffic with Elastic Load Balancing

![image](https://user-images.githubusercontent.com/57224583/141428777-1c2d4a5c-752d-4473-ac5e-16a6f871bb11.png)

- Elastic Load Balancing

![image](https://user-images.githubusercontent.com/57224583/141428857-57f382fa-646e-4f02-8d9f-74f9a19d7427.png)

![image](https://user-images.githubusercontent.com/57224583/141429014-30fee813-aa4d-4d78-9130-8c986edb780c.png)

![image](https://user-images.githubusercontent.com/57224583/141429131-9c67f6df-e85a-47bc-a015-43adbc0f4396.png)

![image](https://user-images.githubusercontent.com/57224583/141429219-df9474cb-7aed-4a10-98d5-ca2937d3ee17.png)

    - Elastic Load Balancing is the AWS service that automatically distributes incoming application traffic across multiple resources, such as Amazon EC2 instances. 

    - A load balancer acts as a single point of contact for all incoming web traffic to your Auto Scaling group. This means that as you add or remove Amazon EC2 instances in response to the amount of incoming traffic, these requests route to the load balancer first. Then, the requests spread across multiple resources that will handle them. For example, if you have multiple Amazon EC2 instances, Elastic Load Balancing distributes the workload across the multiple instances so that no single instance has to carry the bulk of it. 

    - Although Elastic Load Balancing and Amazon EC2 Auto Scaling are separate services, they work together to help ensure that applications running in Amazon EC2 can provide high performance and availability.

- Example: Elastic Load Balancing

![image](https://user-images.githubusercontent.com/57224583/141428062-dadcff9a-3e67-40a3-aacb-a28ed8436eaf.png)

- Low-demand period

    ![image](https://user-images.githubusercontent.com/57224583/141428598-197c32f8-4b58-4297-8dec-e6c3474a0014.png)

    - Here’s an example of how Elastic Load Balancing works. Suppose that a few customers have come to the coffee shop and are ready to place their orders. 

    - If only a few registers are open, this matches the demand of customers who need service. The coffee shop is less likely to have open registers with no customers. In this example, you can think of the registers as Amazon EC2 instances.

- High-demand period

    ![image](https://user-images.githubusercontent.com/57224583/141428647-7a284664-3fda-4fba-ae2b-c7740a6a5470.png)

    - Throughout the day, as the number of customers increases, the coffee shop opens more registers to accommodate them. In the diagram, the Auto Scaling group represents this.

    - Additionally, a coffee shop employee directs customers to the most appropriate register so that the number of requests can evenly distribute across the open registers. You can think of this coffee shop employee as a load balancer. 

# Messaging and queuing

- Monolithic applications and microservices

    ![image](https://user-images.githubusercontent.com/57224583/141429442-945873b9-7bf1-4d2c-a20f-08d502f567d9.png)

    - Applications are made of multiple components. The components communicate with each other to transmit data, fulfill requests, and keep the application running. 

    - Suppose that you have an application with tightly coupled components. These components might include databases, servers, the user interface, business logic, and so on. This type of architecture can be considered a monolithic application. 

    - In this approach to application architecture, if a single component fails, other components fail, and possibly the entire application fails.

    # To help maintain application availability when a single component fails, you can design your application through a microservices approach.

    ![image](https://user-images.githubusercontent.com/57224583/141429649-31b3b5b3-79ff-4add-a45e-66d831332a0f.png)

    - In a microservices approach, application components are loosely coupled. In this case, if a single component fails, the other components continue to work because they are communicating with each other. The loose coupling prevents the entire application from failing. 

    - When designing applications on AWS, you can take a microservices approach with services and components that fulfill different functions. Two services facilitate application integration: Amazon Simple Notification Service (Amazon SNS) and Amazon Simple Queue Service (Amazon SQS).

- Amazon Simple Notification Service (Amazon SNS)

    - Amazon Simple Notification Service (Amazon SNS) is a publish/subscribe service. Using Amazon SNS topics, a publisher publishes messages to subscribers. This is similar to the coffee shop; the cashier provides coffee orders to the barista who makes the drinks.

    - In Amazon SNS, subscribers can be web servers, email addresses, AWS Lambda functions, or several other options. 

    - Example:

        ![image](https://user-images.githubusercontent.com/57224583/141429900-ec1950a0-d978-4229-b2b9-eddf31b0129e.png)

        ![image](https://user-images.githubusercontent.com/57224583/141429960-9ef3acfa-06b8-465f-aca6-e25e185cd09c.png)

- Amazon Simple Queue Service (Amazon SQS)

    - Amazon Simple Queue Service (Amazon SQS) is a message queuing service. 

    - Using Amazon SQS, you can send, store, and receive messages between software components, without losing messages or requiring other services to be available. In Amazon SQS, an application sends messages into a queue. A user or service retrieves a message from the queue, processes it, and then deletes it from the queue. 
    
    - Example:

        ![image](https://user-images.githubusercontent.com/57224583/141432065-c4ec2e98-70c4-4db0-9818-959d733bf9db.png)

        ![image](https://user-images.githubusercontent.com/57224583/141432127-01f98f10-4899-4b20-8703-6b789efbf5f3.png)

        ![image](https://user-images.githubusercontent.com/57224583/141432197-4743e996-52b8-43f4-b346-d9fdf1442cf1.png)

# Additional compute services

![image](https://user-images.githubusercontent.com/57224583/141432613-7e5e578a-0ddf-42d6-aa3e-b3abf3289a28.png)

![image](https://user-images.githubusercontent.com/57224583/141432890-c6a1188a-b4e2-481f-8c23-488b855d1c1b.png)

![image](https://user-images.githubusercontent.com/57224583/141432986-1bc4f5f6-2a60-4c19-bd6c-645e4805b1f6.png)

![image](https://user-images.githubusercontent.com/57224583/141433071-e4315d5d-981d-4a90-a531-99130c4291f4.png)

- Services

    - Serverless computing

        - Earlier in this module, you learned about Amazon EC2, a service that lets you run virtual servers in the cloud. If you have applications that you want to run in Amazon EC2, you must do the following:

            - Provision instances (virtual servers).
            - Upload your code.
            - Continue to manage the instances while your application is running.

        ![image](https://user-images.githubusercontent.com/57224583/141433230-6a68f159-d4bc-4d47-ae7d-ebf397e4d007.png)

        - The term “serverless” means that your code runs on servers, but you do not need to provision or manage these servers. With serverless computing, you can focus more on innovating new products and features instead of maintaining servers.

        - Another benefit of serverless computing is the flexibility to scale serverless applications automatically. Serverless computing can adjust the applications' capacity by modifying the units of consumptions, such as throughput and memory. 

        - An AWS service for serverless computing is AWS Lambda.

    - AWS Lambda

        - [AWS Lambda](https://aws.amazon.com/lambda) is a service that lets you run code without needing to provision or manage servers. 

        - While using AWS Lambda, you pay only for the compute time that you consume. Charges apply only when your code is running. You can also run code for virtually any type of application or backend service, all with zero administration. 

        - For example, a simple Lambda function might involve automatically resizing uploaded images to the AWS Cloud. In this case, the function triggers when uploading a new image. 

        - How AWS Lambda works

            ![image](https://user-images.githubusercontent.com/57224583/141433479-9191059a-ee1f-4c53-9b4d-6366a705b398.png)

            # In AWS, you can also build and run containerized applications.
    
    - Containers

        - Containers provide you with a standard way to package your application's code and dependencies into a single object. You can also use containers for processes and workflows in which there are essential requirements for security, reliability, and scalability.

        - Example:
        
        ![image](https://user-images.githubusercontent.com/57224583/141433728-4410f48f-90aa-4e8a-bab7-67c88cca90fe.png)

        ![image](https://user-images.githubusercontent.com/57224583/141433843-d7e1c93b-23da-4834-959e-c8bf716e860d.png)

        ![image](https://user-images.githubusercontent.com/57224583/141433919-3ffb0576-f307-45f3-b291-9776888dd769.png)

    - Amazon Elastic Container Service (Amazon ECS)

        - [Amazon Elastic Container Service (Amazon ECS)](https://aws.amazon.com/ecs/) is a highly scalable, high-performance container management system that enables you to run and scale containerized applications on AWS. 

        - Amazon ECS supports Docker containers. Docker is a software platform that enables you to build, test, and deploy applications quickly. AWS supports the use of open-source Docker Community Edition and subscription-based Docker Enterprise Edition. With Amazon ECS, you can use API calls to launch and stop Docker-enabled applications.

    - Amazon Elastic Kubernetes Service (Amazon EKS)

        - [Amazon Elastic Kubernetes Service (Amazon EKS)](https://aws.amazon.com/eks/) is a fully managed service that you can use to run Kubernetes on AWS. 

        - [Kubernetes](https://kubernetes.io/) is open-source software that enables you to deploy and manage containerized applications at scale. A large community of volunteers maintains Kubernetes, and AWS actively works together with the Kubernetes community. As new features and functionalities release for Kubernetes applications, you can easily apply these updates to your applications managed by Amazon EKS.

    - AWS Fargate

        - [AWS Fargate](https://aws.amazon.com/fargate/) is a serverless compute engine for containers. It works with both Amazon ECS and Amazon EKS. 

        - When using AWS Fargate, you do not need to provision or manage servers. AWS Fargate manages your server infrastructure for you. You can focus more on innovating and developing your applications, and you pay only for the resources that are required to run your containers.

- Additional resources

- To learn more about the concepts that were explored in Module 2, review these resources.

    - [Compute on AWS](https://aws.amazon.com/products/compute)
    - [AWS Compute Blog](https://aws.amazon.com/blogs/compute/)
    - [AWS Compute Services](https://docs.aws.amazon.com/whitepapers/latest/aws-overview/compute-services.html)
    - [Hands-On Tutorials: Compute](https://aws.amazon.com/getting-started/hands-on/?awsf.getting-started-category=category%23compute&awsf.getting-started-content-type=content-type%23hands-on)
    - [Category Deep Dive: Serverless](https://aws.amazon.com/getting-started/deep-dive-serverless/)
    - [AWS Customer Stories: Serverless](https://aws.amazon.com/solutions/case-studies/?customer-references-cards.sort-by=item.additionalFields.publishedDate&customer-references-cards.sort-order=desc&awsf.customer-references-location=*all&awsf.customer-references-segment=*all&awsf.customer-references-product=product%23vpc%7Cproduct%23api-gateway%7Cproduct%23cloudfront%7Cproduct%23route53%7Cproduct%23directconnect%7Cproduct%23elb&awsf.customer-references-category=category%23serverless)




