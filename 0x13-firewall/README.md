Here's a `README.md` file for the "0x13. Firewall" project in a clear and organized format. It includes the project overview, tasks, and additional information:

```markdown
# 0x13. Firewall

## Curriculum
**SE Foundations**
- Average: 65.84%
- You just released the advanced tasks of this project. Have fun!

## Project Information
- **Project Start:** May 27, 2024, 6:00 AM
- **Project End:** May 28, 2024, 6:00 AM
- **Checker Release:** May 27, 2024, 12:00 PM
- **Auto Review:** Launched at the deadline

## Concepts
For this project, you should review the following concept:
- [Web stack debugging](https://example.com)

## Background Context
Imagine your servers without a firewall…

## Resources
Read or watch:
- [What is a firewall](https://example.com)

### More Info
As explained in the web stack debugging guide concept page, telnet is a very useful tool to check if sockets are open with `telnet IP PORT`. For example, to check if port 22 is open on web-02:

```bash
sylvain@ubuntu$ telnet web-02.holberton.online 22
Trying 54.89.38.100...
Connected to web-02.holberton.online.
Escape character is '^]'.
SSH-2.0-OpenSSH_6.6.1p1 Ubuntu-2ubuntu2.8
Protocol mismatch.
Connection closed by foreign host.
sylvain@ubuntu$
```

In this example, the connection is successful: `Connected to web-02.holberton.online`.

Now let’s try connecting to port 2222:

```bash
sylvain@ubuntu$ telnet web-02.holberton.online 2222
Trying 54.89.38.100...
^C
sylvain@ubuntu$
```

We can see that the connection never succeeds, so after some time I just use `ctrl+c` to kill the process.

Note that the school network is filtering outgoing connections (via a network-based firewall), so you might not be able to interact with certain ports on servers outside of the school network. To test your work on web-01, perform the test from outside the school network, like from your web-02 server. If you SSH into your web-02 server, the traffic will originate from web-02 and not from the school’s network, bypassing the firewall.

**Warning!** Containers on demand cannot be used for this project (Docker container limitation). Be very careful with firewall rules! For instance, if you ever deny port 22/TCP and log out of your server, you will not be able to reconnect to your server via SSH, and we will not be able to recover it. When you install UFW, port 22 is blocked by default, so you should unblock it immediately before logging out of your server.

## Quiz Questions
Great! You've completed the quiz successfully! Keep going!

## Your Servers
| Name             | Username | IP             | State   |
|------------------|----------|----------------|---------|
| 496832-web-01    | ubuntu   | 54.152.232.25  | running |
| 496832-web-02    | ubuntu   | 52.204.103.254 | running |
| 496832-lb-01     | ubuntu   | 52.91.152.220  | running |

## Tasks

### 0. Block all incoming traffic but
**Mandatory**

Let’s install the `ufw` firewall and set up a few rules on web-01.

**Requirements:**
- Apply the following rules to web-01 (optional for lb-01 and web-02, but not checked):
    - Configure `ufw` to block all incoming traffic, except the following TCP ports:
        - 22 (SSH)
        - 443 (HTTPS SSL)
        - 80 (HTTP)
- Share the `ufw` commands used in your answer file.

**Repository:**
- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x13-firewall`
- File: `0-block_all_incoming_traffic_but`

### 1. Port forwarding
**Advanced**

Firewalls can not only filter requests, but they can also forward them.

**Requirements:**
- Configure web-01 so that its firewall redirects port 8080/TCP to port 80/TCP.
- Your answer file should be a copy of the `ufw` configuration file modified to make this happen.

**Repository:**
- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x13-firewall`
- File: `100-port_forwarding`

**Example Terminal Commands:**
```bash
root@03-web-01:~# netstat -lpn
Active Internet connections (only servers)
Proto Recv-Q Send-Q Local Address           Foreign Address         State       PID/Program name
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      2473/nginx
tcp        0      0 0.0.0.0:22              0.0.0.0:*               LISTEN      978/sshd
tcp6       0      0 :::80                   :::*                    LISTEN      2473/nginx
tcp6       0      0 :::22                   :::*                    LISTEN      978/sshd
udp        0      0 0.0.0.0:68              0.0.0.0:*                           594/dhclient
udp        0      0 0.0.0.0:54432           0.0.0.0:*                           594/dhclient
udp6       0      0 :::32563                :::*                                594/dhclient
Active UNIX domain sockets (only servers)
Proto RefCnt Flags       Type       State         I-Node   PID/Program name    Path
unix  2      [ ACC ]     SEQPACKET  LISTENING     7175     433/systemd-udevd   /run/udev/control
unix  2      [ ACC ]     STREAM     LISTENING     6505     1/init              @/com/ubuntu/upstart
unix  2      [ ACC ]     STREAM     LISTENING     8048     741/dbus-daemon     /var/run/dbus/system_bus_socket
unix  2      [ ACC ]     STREAM     LISTENING     8419     987/acpid           /var/run/acpid.socket
root@03-web-01:~#

root@03-web-01:~# grep listen /etc/nginx/sites-enabled/default
    listen 80 default_server;
    listen [::]:80 default_server ipv6only=on;
    # pass the PHP scripts to FastCGI server listening on 127.0.0.1:9000
#   listen 8000;
#   listen somename:8080;
#   listen 443;
root@03-web-01:~#

Terminal in web-02:
ubuntu@03-web-02:~$ curl -sI web-01.holberton.online:80
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 07 Mar 2017 02:14:41 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
Accept-Ranges: bytes

ubuntu@03-web-02:~$ curl -sI web-01.holberton.online:8080
HTTP/1.1 200 OK
Server: nginx/1.4.6 (Ubuntu)
Date: Tue, 07 Mar 2017 02:14:43 GMT
Content-Type: text/html
Content-Length: 612
Last-Modified: Tue, 04 Mar 2014 11:46:45 GMT
Connection: keep-alive
ETag: "5315bd25-264"
Accept-Ranges: bytes

ubuntu@03-web-02:~$
```

**Note:**
Using `curl` to query `web-01.holberton.online`, and since the firewall is forwarding the ports, you get an HTTP 200 response on port 80/TCP and also on port 8080/TCP.

## Repository
- GitHub repository: `alx-system_engineering-devops`
- Directory: `0x13-firewall`

## Author
**ALX, 2024**
```

This `README.md` provides a comprehensive overview of the project, including the tasks, concepts, background context, and warnings. It ensures that users have all the necessary information to understand and complete the project successfully.
