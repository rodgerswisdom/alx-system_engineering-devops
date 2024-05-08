
#### 0x0A. Configuration Management
- DevOps
- SysAdmin
- Scripting
- CI/CD

#### Background Context

During my time at SlideShare, I developed an auto-remediation tool named Skynet, which monitored, scaled, and fixed Cloud infrastructure. Skynet utilized MCollective, a parallel job-execution system, enabling me to execute commands across multiple servers simultaneously. However, a critical bug in my code led to unintended consequences. The bug caused MCollective to interpret nil as 'all servers' and consequently, terminated a significant portion of our infrastructure, disrupting user activities.

Thanks to Puppet, we swiftly restored our infrastructure to normal operation in under an hour. The incident underscored the importance of automation in managing complex infrastructures.

[Here's a humorous take on the incident](https://twitter.com/devopsreact/status/836971570136375296).

#### Resources

**Read or Watch:**
- [Intro to Configuration Management](#)
- [Puppet Resource Type: File](#)
- [Puppet’s Declarative Language: Modeling Instead of Scripting](#)
- [Puppet Lint](#)
- [Puppet Emacs Mode](#)

#### Requirements

**General:**
- All files interpreted on Ubuntu 20.04 LTS
- All files end with a new line
- A README.md file at the root of the project folder is mandatory
- Puppet manifests must pass puppet-lint version 2.1.1 without errors
- Puppet manifests must run without error
- Puppet manifests' first line must be a comment explaining the manifest's purpose
- Puppet manifests files must end with the extension .pp

**Note on Versioning:**
- Ubuntu 20.04 VM should have Puppet 5.5 preinstalled

**Installation:**
```bash
# Install Puppet
$ apt-get install -y ruby=1:2.7+1 --allow-downgrades
$ apt-get install -y ruby-augeas
$ apt-get install -y ruby-shadow
$ apt-get install -y puppet

# Install puppet-lint
$ gem install puppet-lint
```

### Tasks

#### 0. Create a File (Mandatory)
- **Score:** 0.0% (Checks completed: 0.0%)
- Using Puppet, create a file in /tmp.
  
  **Requirements:**
  - File path: /tmp/school
  - File permission: 0744
  - File owner: www-data
  - File group: www-data
  - File content: "I love Puppet"

[GitHub Repo](https://github.com/alx-system_engineering-devops/0x0A-configuration_management/blob/main/0-create_a_file.pp)

#### 1. Install a Package (Mandatory)
- **Score:** 0.0% (Checks completed: 0.0%)
- Using Puppet, install Flask from pip3.
  
  **Requirements:**
  - Install Flask
  - Version: 2.1.0

[GitHub Repo](https://github.com/alx-system_engineering-devops/0x0A-configuration_management/blob/main/1-install_a_package.pp)

#### 2. Execute a Command (Mandatory)
- **Score:** 0.0% (Checks completed: 0.0%)
- Using Puppet, create a manifest that kills a process named 'killmenow'.
  
  **Requirements:**
  - Must use the exec Puppet resource
  - Must use pkill

[GitHub Repo](https://github.com/alx-system_engineering-devops/0x0A-configuration_management/blob/main/2-execute_a_command.pp)

### Copyright

© 2024 ALX, All rights reserved.
