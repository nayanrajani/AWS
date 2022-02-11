# Module4- Netwoking

- Learning objectives

    - In this module, you will learn how to:

        - Describe the basic concepts of networking.
        - Describe the difference between public and private networking resources. 
        - Explain a virtual private gateway using a real life scenario. 
        - Explain a virtual private network (VPN) using a real life scenario.
        - Describe the benefit of AWS Direct Connect. 
        - Describe the benefit of hybrid deployments. 
        - Describe the layers of security used in an IT strategy.
        - Describe the services customers use to interact with the AWS global network.

# Connectivity to AWS
- Details
    - Amazon Virtual Private Cloud (Amazon VPC)

        - Imagine the millions of customers who use AWS services. Also, imagine the millions of resources that these customers have created, such as Amazon EC2 instances. Without boundaries around all of these resources, network traffic would be able to flow between them unrestricted. 

        - A networking service that you can use to establish boundaries around your AWS resources is [Amazon Virtual Private Cloud (Amazon VPC)](https://aws.amazon.com/vpc/).

        - Amazon VPC enables you to provision an isolated section of the AWS Cloud. In this isolated section, you can launch resources in a virtual network that you define. Within a virtual private cloud (VPC), you can organize your resources into subnets. A subnet is a section of a VPC that can contain resources such as Amazon EC2 instances.

    - Internet gateway

        - To allow public traffic from the internet to access your VPC, you attach an internet gateway to the VPC.

        ![image](https://user-images.githubusercontent.com/57224583/141458442-e1145b1f-d8e9-4add-9853-fc6ba6c437b7.png)

        - An internet gateway is a connection between a VPC and the internet. You can think of an internet gateway as being similar to a doorway that customers use to enter the coffee shop. Without an internet gateway, no one can access the resources within your VPC.

    # What if you have a VPC that includes only private resources?

    - Virtual private gateway

        - To access private resources in a VPC, you can use a virtual private gateway. 

        - Here’s an example of how a virtual private gateway works. You can think of the internet as the road between your home and the coffee shop. Suppose that you are traveling on this road with a bodyguard to protect you. You are still using the same road as other customers, but with an extra layer of protection. 

        - The bodyguard is like a virtual private network (VPN) connection that encrypts (or protects) your internet traffic from all the other requests around it. 

        - The virtual private gateway is the component that allows protected internet traffic to enter into the VPC. Even though your connection to the coffee shop has extra protection, traffic jams are possible because you’re using the same road as other customers. 

        ![image](https://user-images.githubusercontent.com/57224583/141458659-6150ed93-c260-4527-ba7f-ca6a51315df4.png)

        - A virtual private gateway enables you to establish a virtual private network (VPN) connection between your VPC and a private network, such as an on-premises data center or internal corporate network. A virtual private gateway allows traffic into the VPC only if it is coming from an approved network.

    - AWS Direct Connect

        - AWS Direct Connect is a service that enables you to establish a dedicated private connection between your data center and a VPC.  

        - Suppose that there is an apartment building with a hallway directly linking the building to the coffee shop. Only the residents of the apartment building can travel through this hallway. 

        - This private hallway provides the same type of dedicated connection as AWS Direct Connect. Residents are able to get into the coffee shop without needing to use the public road shared with other customers. 

        ![image](https://user-images.githubusercontent.com/57224583/141458806-2d3f133d-c2a1-48b5-b4bd-4e8e3d83c113.png)

        - The private connection that AWS Direct Connect provides helps you to reduce network costs and increase the amount of bandwidth that can travel through your network.

# Subnets and network access control lists
- Details
    - Details
        - To learn more about the role of subnets within a VPC, review the following example from the coffee shop.

            - First, customers give their orders to the cashier. The cashier then passes the orders to the barista. This process allows the line to keep running smoothly as more customers come in. 

            - Suppose that some customers try to skip the cashier line and give their orders directly to the barista. This disrupts the flow of traffic and results in customers accessing a part of the coffee shop that is restricted to them.

            ![image](https://user-images.githubusercontent.com/57224583/141459166-b9f0f6e6-51dc-48ac-b2ca-c1300a36c56c.png)

            - To fix this, the owners of the coffee shop divide the counter area by placing the cashier and the barista in separate workstations. The cashier’s workstation is public facing and designed to receive customers. The barista’s area is private. The barista can still receive orders from the cashier but not directly from customers.

            ![image](https://user-images.githubusercontent.com/57224583/141459250-f526f566-d3af-4092-87f5-3a3d4f3d9746.png)

            - This is similar to how you can use AWS networking services to isolate resources and determine exactly how network traffic flows.

            - In the coffee shop, you can think of the counter area as a VPC. The counter area divides into two separate areas for the cashier’s workstation and the barista’s workstation. In a VPC, subnets are separate areas that are used to group together resources.

    - Subnets

        - A subnet is a section of a VPC in which you can group resources based on security or operational needs. Subnets can be public or private. 

        ![image](https://user-images.githubusercontent.com/57224583/141459439-d54a0656-abbf-4408-a7da-afa5fb5b1994.png)

            - Public subnets contain resources that need to be accessible by the public, such as an online store’s website.

            - Private subnets contain resources that should be accessible only through your private network, such as a database that contains customers’ personal information and order histories. 

            - In a VPC, subnets can communicate with each other. For example, you might have an application that involves Amazon EC2 instances in a public subnet communicating with databases that are located in a private subnet.

    - Network traffic in a VPC

        - When a customer requests data from an application hosted in the AWS Cloud, this request is sent as a packet. - A packet is a unit of data sent over the internet or a network. 

        - It enters into a VPC through an internet gateway. Before a packet can enter into a subnet or exit from a subnet, it checks for permissions. These permissions indicate who sent the packet and how the packet is trying to communicate with the resources in a subnet.

        - The VPC component that checks packet permissions for subnets is a [network access control list (ACL)](https://docs.aws.amazon.com/vpc/latest/userguide/vpc-network-acls.html).

    - Network access control lists (ACLs)

        - A network access control list (ACL) is a virtual firewall that controls inbound and outbound traffic at the subnet level.

            - For example, step outside of the coffee shop and imagine that you are in an airport. In the airport, travelers are trying to enter into a different country. You can think of the travelers as packets and the passport control officer as a network ACL. The passport control officer checks travelers’ credentials when they are both entering and exiting out of the country. If a traveler is on an approved list, they are able to get through. However, if they are not on the approved list or are explicitly on a list of banned travelers, they cannot come in.

            ![image](https://user-images.githubusercontent.com/57224583/141459626-850078a1-5651-4706-9efc-58727faa9961.png)

            - Each AWS account includes a default network ACL. When configuring your VPC, you can use your account’s default network ACL or create custom network ACLs. 

            - By default, your account’s default network ACL allows all inbound and outbound traffic, but you can modify it by adding your own rules. For custom network ACLs, all inbound and outbound traffic is denied until you add rules to specify which traffic to allow. Additionally, all network ACLs have an explicit deny rule. This rule ensures that if a packet doesn’t match any of the other rules on the list, the packet is denied. 

    - Stateless packet filtering

        - Network ACLs perform stateless packet filtering. They remember nothing and check packets that cross the subnet border each way: inbound and outbound. 

            - Recall the previous example of a traveler who wants to enter into a different country. This is similar to sending a request out from an Amazon EC2 instance and to the internet.

            - When a packet response for that request comes back to the subnet, the network ACL does not remember your previous request. The network ACL checks the packet response against its list of rules to determine whether to allow or deny.

            ![image](https://user-images.githubusercontent.com/57224583/141459751-d900f5d6-934b-4022-a0dd-31e8c469dacb.png)

            -After a packet has entered a subnet, it must have its permissions evaluated for resources within the subnet, such as Amazon EC2 instances. 

            - The VPC component that checks packet permissions for an Amazon EC2 instance is a [security group](https://docs.aws.amazon.com/vpc/latest/userguide/VPC_SecurityGroups.html).

    - Security groups

        - A security group is a virtual firewall that controls inbound and outbound traffic for an Amazon EC2 instance.

        ![image](https://user-images.githubusercontent.com/57224583/141460138-09ac4e67-62bb-48b8-b5ec-a8cf30fcde45.png)

        - By default, a security group denies all inbound traffic and allows all outbound traffic. You can add custom rules to configure which traffic to allow or deny.

        - For this example, suppose that you are in an apartment building with a door attendant who greets guests in the lobby. You can think of the guests as packets and the door attendant as a security group. As guests arrive, the door attendant checks a list to ensure they can enter the building. However, the door attendant does not check the list again when guests are exiting the building

        - If you have multiple Amazon EC2 instances within a subnet, you can associate them with the same security group or use different security groups for each instance. 

    - Stateful packet filtering

        - Security groups perform stateful packet filtering. They remember previous decisions made for incoming packets.

        - Consider the same example of sending a request out from an Amazon EC2 instance to the internet. 

        - When a packet response for that request returns to the instance, the security group remembers your previous request. The security group allows the response to proceed, regardless of inbound security group rules.

        ![image](https://user-images.githubusercontent.com/57224583/141460271-69c67480-6222-4b87-aec9-c47d5b53d842.png)

        - Both network ACLs and security groups enable you to configure custom rules for the traffic in your VPC. As you continue to learn more about AWS security and networking, make sure to understand the differences between network ACLs and security groups.

        ![image](https://user-images.githubusercontent.com/57224583/141460334-20e40e18-7ccb-4479-99f7-7a86a238ab7a.png)

# Global networking

- Domain Name System (DNS)

    - Suppose that AnyCompany has a website hosted in the AWS Cloud. Customers enter the web address into their browser, and they are able to access the website. This happens because of Domain Name System (DNS) resolution. DNS resolution involves a DNS server communicating with a web server.

    - You can think of DNS as being the phone book of the internet. DNS resolution is the process of translating a domain name to an IP address. 

    ![image](https://user-images.githubusercontent.com/57224583/141460675-3b315de4-09ec-4b67-a4b4-f7f1f910adce.png)

    For example, suppose that you want to visit AnyCompany’s website. 

    - When you enter the domain name into your browser, this request is sent to a DNS server. 

    - The DNS server asks the web server for the IP address that corresponds to AnyCompany’s website.

    - The web server responds by providing the IP address for AnyCompany’s website, 192.0.2.0.

- Amazon Route 53

    - [Amazon Route 53](https://aws.amazon.com/route53) is a DNS web service. It gives developers and businesses a reliable way to route end users to internet applications hosted in AWS. 

    - Amazon Route 53 connects user requests to infrastructure running in AWS (such as Amazon EC2 instances and load balancers). It can route users to infrastructure outside of AWS.

    - Another feature of Route 53 is the ability to manage the DNS records for domain names. You can register new domain names directly in Route 53. You can also transfer DNS records for existing domain names managed by other domain registrars. This enables you to manage all of your domain names within a single location.

    - In the previous module, you learned about Amazon CloudFront, a content delivery service. The following example describes how Route 53 and Amazon CloudFront work together to deliver content to customers.

    # Example: How Amazon Route 53 and Amazon CloudFront deliver content

    ![image](https://user-images.githubusercontent.com/57224583/141461125-69977cc7-a58a-4887-875d-dd768a1475a4.png)

    - Suppose that AnyCompany’s application is running on several Amazon EC2 instances. These instances are in an Auto Scaling group that attaches to an Application Load Balancer. 

    - A customer requests data from the application by going to AnyCompany’s website. 

    - Amazon Route 53 uses DNS resolution to identify AnyCompany.com’s corresponding IP address, 192.0.2.0. - 
    
    - This information is sent back to the customer. 

    - The customer’s request is sent to the nearest edge location through Amazon CloudFront. 

    - Amazon CloudFront connects to the Application Load Balancer, which sends the incoming packet to an Amazon EC2 instance.

# Additional resources

- To learn more about the concepts that were explored in Module 4, review these resources.

    - [Networking and Content Delivery on AWS](https://aws.amazon.com/products/networking)
    - [AWS Networking & Content Delivery Blog](https://aws.amazon.com/blogs/networking-and-content-delivery/)
    - [Amazon Virtual Private Cloud](https://aws.amazon.com/vpc)
    - [What is Amazon VPC?](https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html)
    - [How Amazon VPC works](https://docs.aws.amazon.com/vpc/latest/userguide/how-it-works.html)