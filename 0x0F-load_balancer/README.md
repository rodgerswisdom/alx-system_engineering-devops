# ALX System Engineering & DevOps - Load Balancer Project

## Curriculum
- **SE Foundations**
  - **Average:** 55.51%
- **0x0F. Load balancer**
- **DevOps**
- **SysAdmin**
  - **Weight:** 1
  - **Project Start:** May 13, 2024 6:00 AM
  - **Project End:** May 14, 2024 6:00 AM
  - **Checker Release:** May 13, 2024 12:00 PM
  - **Auto Review:** Will be launched at the deadline

## Concepts
For this project, focus on the following concepts:
- Load balancer
- Web stack debugging

## Background Context
Additional servers have been provided:
- `gc-[STUDENT_ID]-web-02-XXXXXXXXXX`
- `gc-[STUDENT_ID]-lb-01-XXXXXXXXXX`

The objective is to enhance the web stack for redundancy, allowing for increased traffic handling and infrastructure reliability.

## Resources
Read or watch:
- [Introduction to load-balancing and HAproxy](#)
- [HTTP header](#)
- [Debian/Ubuntu HAProxy packages](#)

## Requirements
### General
- Allowed editors: vi, vim, emacs
- Interpreted on Ubuntu 16.04 LTS
- All files should end with a new line
- `README.md` is mandatory
- Bash script files must be executable
- Scripts must pass Shellcheck (version 0.3.7) without errors
- First line of Bash scripts: `#!/usr/bin/env bash`
- Second line of Bash scripts: comment explaining the script's purpose

### Servers
| Name          | Username | IP              | State   |
|---------------|----------|-----------------|---------|
| 496832-web-01 | ubuntu   | 54.152.232.25  | running |
| 496832-web-02 |          |                 |         |
| 496832-lb-01  |          |                 |         |

## Tasks
### 0. Double the number of webservers (mandatory)
- Configure web-02 identical to web-01
- Ensure Nginx HTTP response contains a custom header (`X-Served-By`)
- Script: `0-custom_http_response_header`

### 1. Install your load balancer (mandatory)
- Install and configure HAproxy on lb-01
- Distribute traffic to web-01 and web-02 using roundrobin algorithm
- Ensure HAproxy can be managed via an init script
- Script: `1-install_load_balancer`

## Repository
- GitHub repository: [alx-system_engineering-devops](#)
- Directory: `0x0F-load_balancer`

## Copyright
© 2024 ALX, All rights reserved.
