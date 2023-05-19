# AWS Resilience Hub

### Prepare and protection your application - from disruption with AWS Resilience Hub

- Failures are given, and everthing will eventually fail over time
  - werner vogels
    - Amazon CTO

- 4 - Categories of Failure

- 5 - challenge- enabling Resilience

- 6 - Shared Responsibility Model for Resilience

- 7 - What is Application Resilience

- 8 - AWS Resilience Hub Solution

- 9 - AWS Resilience Hub - Key Capabilities

- 10 - AWS Resilience Hub - Key Benefits

- 11 - AWS Resilience Hub - Overview (Similar to security hub)

- 12 - AWS Resilience Hub - Use cases

- 13 - AWS Resilience Hub - Supported Resourecs

- 14-20 AWS Resilience Hub - How It Works?

- 21 - Pricing

- 22 - Disaster Recovery Strategy on AWS - Agenda

- 23 - Quote - werner vogels - Amazon CTO

- 24 - Resilience - The Mental Model
  - High Availability
  - Disaster recovery
  - Continuous Improvement

- 25 - AWS Well Architected: Reliability Pillar

- 26 - Categories of Disasters

- 27-30 AWS Regions, AZ, HA, Data Protection Worldwide

- 31 - Disaster Recovery Benefits of the cloud

- 32 - Disaster recovery

- 33 - AWS Elastic Disaster Recovery

- Lunch

- Resilience Hub Workshop
  - https://catalog.us-east-1.prod.workshops.aws/join?access-code=8dc7-07ebb2-d4
  - 34 - 36

- 37 - Backup & Restore
- 38 - Pilot Light
- 39 - Warm Standby
- 40 - Hot Standby
- 41 - Common disaster recovery challenges
- 42 - AWS Elastic disaster recovery Benefits
- 43 - AWS Elastic disaster recovery Lifecycle
- 44 - AWS Elastic disaster recovery Works
- 45 - Wide platform Support

- QnA
from Barathkumar to everyone:    8:56 AM
what are the cost implications involved
from Puneet Arora to everyone:    8:56 AM
Thanks for the question Bharath. We will respond live to the question
from Prasanna Wamanacharya to everyone:    8:58 AM
does it support integration with open source tools like Github, Jenkins, Terraform, etc.
from Sankar to everyone:    8:59 AM
Yes, You can integrate with your CI/CD tools and create the plans while you deploying the your applications. 
from Prasanna Wamanacharya to everyone:    9:01 AM
thanks @Sankar
from Raguraman Manoharan to everyone:    9:03 AM
Is this need to be configured per account basis or we can manage it centrally when we have AWS org?
from Sankar to everyone:    9:06 AM
Yea You can manage centrally, while you adding your applications you can mention the Account ID.
from Raguraman Manoharan to everyone:    9:10 AM
ok thanks
from Sankar to everyone:    9:12 AM
Please refer these resources for addtional informatino - https://aws.amazon.com/resilience-hub/resources/?resilience-whats-new.sort-by=item.additionalFields.postDateTime&resilience-whats-new.sort-order=desc&resilience-blog-posts.sort-by=item.additionalFields.createdDate&resilience-blog-posts.sort-order=desc 
from Raguraman Manoharan to everyone:    9:12 AM
When you say the application does is cover the based infra also?
from Sankar to everyone:    9:13 AM
Yes Ragu, it covers both. 
from Raguraman Manoharan to everyone:    9:20 AM
ok
from Sankar to everyone:    9:26 AM
Hi all, Please feel free to ask questions during the session in chat window
from Anirudh Namdeo to everyone:    9:30 AM
Hi Puneet, Does resiliency hub support Terraform?
from Natarajan Elayappan to everyone:    9:31 AM
Resilience Hub support the Terraform statefiles now 
from Anirudh Namdeo to everyone:    9:31 AM
Thanks
from Natarajan Elayappan to everyone:    9:32 AM
https://aws.amazon.com/about-aws/whats-new/2022/05/aws-resilience-hub-adds-terraform-amazon-ecs-additional-services/
from Kenneth Yap SoftwareOne to everyone:    9:32 AM
Apart from web app, does AWS RDS  support Microsoft Exchange servers replication to EDR with 1 hour of RPO ? 
from Prasanna Wamanacharya to everyone:    9:34 AM
does resilience hub support EKS
from Natarajan Elayappan to everyone:    9:36 AM
Resilience Hub supports the Amazon EKS
from Sankar to everyone:    9:36 AM
@ Kenneth, Yes AWS EDR will support Microsoft Exchange . We will deepdive into this and will understnd more about the usecase. 
from Minh Le to everyone:    9:38 AM
Thank AWS Team!
from Minh Le to everyone:    9:39 AM
Please help to send the feedback to the chat :D 
from Minh Le to everyone:    9:39 AM
*I mean the link. Thank you!
from Natarajan Elayappan to everyone:    9:39 AM
sure
from Puneet Arora to everyone:    9:40 AM
Survey Link : https://survey.immersionday.com/300ldfU4R

from Minh Le to everyone:    10:01 AM
:+1:
from Natarajan Elayappan to everyone:    10:01 AM
https://catalog.us-east-1.prod.workshops.aws/join?access-code=8dc7-07ebb2-d4
from Puneet Arora to everyone:    10:02 AM
Lab Link : https://catalog.us-east-1.prod.workshops.aws/join?access-code=8dc7-07ebb2-d4
from SURANJAN NANDI to everyone:    10:06 AM
yes
from Nayan Rajani to everyone:    10:06 AM
Successfully Logged in to console
from Nayan Rajani to everyone:    10:10 AM
Success for me!
from Natarajan Elayappan to everyone:    10:10 AM
good
from SURANJAN NANDI to everyone:    10:12 AM
update complete
from Raguraman Manoharan to everyone:    10:13 AM
i am behind
from Ankit to everyone:    10:13 AM
Do we need to perform this in our own account?
from Natarajan Elayappan to everyone:    10:13 AM
No need
from Natarajan Elayappan to everyone:    10:13 AM
Skip this step :Using your own account
from Natarajan Elayappan to everyone:    10:14 AM
as you are using AWS event account
from Ankit to everyone:    10:14 AM
ok. I have logged in to AWS Resilience Immersion Day Workshop console, what's next?
from Ankit to everyone:    10:14 AM
ok, thanks
from Nayan Rajani to everyone:    10:17 AM
Identify resources, not able to see this page
from Nayan Rajani to everyone:    10:18 AM
yes
from Nayan Rajani to everyone:    10:18 AM
yes i did
from SURANJAN NANDI to everyone:    10:18 AM
Stack [arh-lab-pipeline] already exists
from marclau to everyone:    10:18 AM
can i ask in the background, how is the assessment being conducted? does it simulate the scenarios?
from Nayan Rajani to everyone:    10:19 AM
okay got it
from Nayan Rajani to everyone:    10:19 AM
thanks
from Nayan Rajani to everyone:    10:19 AM
we need to choose N virginia right?
from Natarajan Elayappan to everyone:    10:20 AM
yes
from Nayan Rajani to everyone:    10:21 AM
Published!
from Natarajan Elayappan to everyone:    10:21 AM
great
from Raguraman Manoharan to everyone:    10:21 AM
cannot unmute
from Ankit to everyone:    10:21 AM
Not able to unmute
from Raguraman Manoharan to everyone:    10:22 AM
Still no
from Ankit to everyone:    10:22 AM
Still no
from Natarajan Elayappan to everyone:    10:22 AM
ok
from Ankit to everyone:    10:23 AM
Not yet
from Raguraman Manoharan to everyone:    10:23 AM
yes
from SURANJAN NANDI to everyone:    10:23 AM
no
from Ankit to everyone:    10:23 AM
on it
from Nayan Rajani to everyone:    10:23 AM
yes
from Natarajan Elayappan to everyone:    10:24 AM
thanks
from SURANJAN NANDI to everyone:    10:24 AM
https://catalog.us-east-1.prod.workshops.aws/event/dashboard/en-US/workshop/prepare-and-protect/2-add-app-to-arh 
from SURANJAN NANDI to everyone:    10:24 AM
I see add application instead of add policy
from SURANJAN NANDI to everyone:    10:25 AM
ok got it
from Natarajan Elayappan to everyone:    10:25 AM
great
from marclau to everyone:    10:28 AM
are we able to suppress the recommendation ?
from marclau to everyone:    10:29 AM
i believe to be able to achieve "meets" status, we have apply all the recommedation?
from SURANJAN NANDI to everyone:    10:32 AM
I can see only one option and not 2 https://catalog.us-east-1.prod.workshops.aws/event/dashboard/en-US/workshop/prepare-and-protect/3-resiliency-recommendations
from Puneet Arora to everyone:    10:35 AM
The lab is designed to execute Option 1. In real world you can choose
from marclau to everyone:    10:36 AM
no
from Ankit to everyone:    10:37 AM
Give me 5 mins, need to run lot of commands from cloudshell
from Minh Le to everyone:    10:37 AM
In step 3 right now to investigate the report.
from Prasanna Wamanacharya to everyone:    10:37 AM
no
from Puneet Arora to everyone:    10:39 AM
This tool is currently focused for AWS hosted applications only. You can explore 3rd Party tools for on-prem assessment.
from Natarajan Elayappan to everyone:    10:42 AM
https://aws.amazon.com/blogs/mt/resilience-reporting-dashboard-aws-resilience-hub/
from Ankit to everyone:    10:43 AM
how much time arh-lab-pipeline will take, it is running from last 4 mins
from Natarajan Elayappan to everyone:    10:45 AM
It won't take long , can you refresh and see
from Prakhyat Munnoli to everyone:    10:46 AM
AWS Resilience hub pricing is 15$ per app (after free tier). this is independent of number of resources an application can have, correct?
from Raguraman Manoharan to everyone:    10:47 AM
I still see Compliance status is policy breached
from Raguraman Manoharan to everyone:    10:47 AM
its for the NAT gateway resource
from Raguraman Manoharan to everyone:    10:47 AM
Failed in Availability Zone
from Puneet Arora to everyone:    10:48 AM
@prakhyat - that correct
from Prakhyat Munnoli to everyone:    10:48 AM
also, is there an option to see the cost to implement the recommendations at resource level? presume the one shown on recommendation page is consolidated
from Natarajan Elayappan to everyone:    10:49 AM
@Raguraman  - Can you please re-assess your applications  and do the recommend settings again
from Prakhyat Munnoli to everyone:    10:49 AM
and alternatively, can recommendations be fixed only for certain layers of the application
from Prakhyat Munnoli to everyone:    10:50 AM
say db layer and app layer later
from Puneet Arora to everyone:    10:50 AM
@prakhyat - Yes the recommendation does show cost for additional resoources 
from Puneet Arora to everyone:    10:50 AM
estimated* cost
from Raguraman Manoharan to everyone:    10:53 AM
I can see that NAT gateway deployed it in both the AZ . I can see the resources in application structure. Not sure why the Assesment is still fail
from Natarajan Elayappan to everyone:    10:53 AM
Resilience Hub LAB URL :https://catalog.us-east-1.prod.workshops.aws/join?access-code=8dc7-07ebb2-d4
from Raguraman Manoharan to everyone:    11:19 AM
how the revese replication work? DR to PROD
from Raguraman Manoharan to everyone:    11:19 AM
ok
from Ankit to everyone:    11:20 AM
In backend is it using AWS MGN service?
from Sankar to everyone:    11:22 AM
https://catalog.us-east-1.prod.workshops.aws/join?access-code=88b6-073119-f0
from Puneet Arora to everyone:    11:22 AM
Please Use Incognito window to run the current lab