# Webstack Monitoring Project README

## Curriculum
SE Foundations
- Average: 65.62%
- 0x18. Webstack monitoring
- DevOps
- SysAdmin
- Monitoring
- Weight: 1
- Project will start Jun 19, 2024 6:00 AM, must end by Jun 20, 2024 6:00 AM
- Checker was released at Jun 19, 2024 12:00 PM
- An auto review will be launched at the deadline

## Concepts
For this project, we expect you to look at these concepts:
- Monitoring
- Server

## Background Context
“You cannot fix or improve what you cannot measure” is a famous saying in the Tech industry. In the age of the data-ism, monitoring how our Software systems are doing is an important thing. In this project, we will implement one of many tools to measure what is going on our servers.

Web stack monitoring can be broken down into 2 categories:
1. Application monitoring: getting data about your running software and making sure it is behaving as expected.
2. Server monitoring: getting data about your virtual or physical server and making sure they are not overloaded (could be CPU, memory, disk or network overload).

## Resources
Read or watch:
- What is server monitoring
- What is application monitoring
- System monitoring by Google
- Nginx logging and monitoring

## Learning Objectives
At the end of this project, you are expected to be able to explain to anyone, without the help of Google:
- Why is monitoring needed?
- What are the 2 main areas of monitoring?
- What are access logs for a web server (such as Nginx)?
- What are error logs for a web server (such as Nginx)?

## Copyright - Plagiarism
You are tasked to come up with solutions for the tasks below yourself to meet the above learning objectives.
You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
You are not allowed to publish any content of this project.
Any form of plagiarism is strictly forbidden and will result in removal from the program.

## Requirements
### General
- Allowed editors: vi, vim, emacs
- All your files will be interpreted on Ubuntu 16.04 LTS
- All your files should end with a new line
- A README.md file, at the root of the folder of the project, is mandatory
- All your Bash script files must be executable
- Your Bash script must pass Shellcheck (version 0.3.7) without any error
- The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
- The second line of all your Bash scripts should be a comment explaining what is the script doing

### Your servers
| Name            | Username | IP             | State   |
|-----------------|----------|----------------|---------|
| 496832-web-01   | ubuntu   | 52.72.24.43    | running |
| 496832-web-02   | ubuntu   | 52.204.103.254 | running |
| 496832-lb-01    | ubuntu   | 52.91.152.220  | running |

## Tasks
### 0. Sign up for Datadog and install datadog-agent
- Sign up for Datadog at [Datadog US](https://app.datadoghq.com)
- Use the US1 region
- Install datadog-agent on web-01
- Create an application key
- Copy-paste your Datadog API key and application key in your Intranet user profile
- Ensure server web-01 is visible in Datadog under the hostname XX-web-01

### 1. Monitor some metrics
- Set up a monitor for read requests issued per second
- Set up a monitor for write requests issued per second

### 2. Create a dashboard
- Create a new dashboard with at least 4 widgets
- Add widgets to monitor various metrics
- Create an answer file `2-setup_datadog` with the `dashboard_id` on the first line

## Repo
- GitHub repository: alx-system_engineering-devops
- Directory: 0x18-webstack_monitoring

## Copyright
Copyright © 2024 ALX, All rights reserved.

