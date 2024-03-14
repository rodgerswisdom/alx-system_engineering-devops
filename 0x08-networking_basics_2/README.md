```markdown
# Networking Basics #1

## Table of Contents
- [Description](#description)
- [Curriculum](#curriculum)
- [Resources](#resources)
- [Learning Objectives](#learning-objectives)
- [Requirements](#requirements)
- [Tasks](#tasks)
  - [0. Change your home IP](#0-change-your-home-ip)
  - [1. Show attached IPs](#1-show-attached-ips)
  - [2. Port listening on localhost](#2-port-listening-on-localhost)
- [Copyright](#copyright)

## Description
This repository contains scripts and resources related to advanced networking basics. It covers topics such as configuring IP addresses, displaying active IPv4 IPs, and listening on ports.

## Curriculum
- **SE Foundations**
  - Average: 65.43%
  - **0x08. Networking basics #1**
    - DevOps
    - Network
    - SysAdmin
    - By: Sylvain Kalache
    - Weight: 1
    - Project duration: Mar 13, 2024, 6:00 AM - Mar 15, 2024, 6:00 AM
    - Checker release: Mar 15, 2024, 6:00 AM

## Resources
Read or watch:
- What is localhost
- What is 0.0.0.0
- What is the hosts file
- Netcat examples

Man or help:
- `ifconfig`
- `telnet`
- `nc`
- `cut`

## Learning Objectives
By the end of this project, you are expected to be able to explain:
- General concepts about localhost, 0.0.0.0, and the hosts file
- Displaying active network interfaces on a machine

## Requirements
- **General:**
  - Allowed editors: vi, vim, emacs
  - Interpretation on Ubuntu 20.04 LTS
  - Files end with a new line
  - README.md file is mandatory
  - Bash scripts must be executable
  - Bash scripts must pass Shellcheck (version 0.7.0 via apt-get) without errors
  - First line of all Bash scripts: `#!/usr/bin/env bash`
  - Second line of all Bash scripts: a comment explaining the script's purpose

## Tasks

### 0. Change your home IP (mandatory)
- [Script](./0-change_your_home_IP)
- Description: Configures an Ubuntu server to change localhost and facebook.com IP addresses.

### 1. Show attached IPs (mandatory)
- [Script](./1-show_attached_IPs)
- Description: Displays all active IPv4 IPs on the machine.

### 2. Port listening on localhost (advanced)
- [Script](./100-port_listening_on_localhost)
- Description: Listens on port 98 on localhost.

## Copyright
© 2024 ALX, All rights reserved.
```

This README provides an overview of the project, including its curriculum, resources, learning objectives, requirements, and details about each task along with links to the corresponding scripts.
