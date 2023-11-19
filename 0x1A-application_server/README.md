0x1A. Application server
DevOps
SysAdmin
 By: Sylvain Kalache, co-founder at Holberton School
 Weight: 1
 Ongoing second chance project - started Nov 13, 2023 6:00 AM, must end by Nov 19, 2023 6:00 AM
 An auto review will be launched at the deadline
In a nutshell…
Auto QA review: 0.0/15 mandatory & 0.0/9 optional
Altogether:  0.0%
Mandatory: 0.0%
Optional: 0.0%
Calculation:  0.0% + (0.0% * 0.0%)  == 0.0%
Concepts
For this project, we expect you to look at these concepts:

Web Server
Server
Web stack debugging


Background Context


Your web infrastructure is already serving web pages via Nginx that you installed in your first web stack project. While a web server can also serve dynamic content, this task is usually given to an application server. In this project you will add this piece to your infrastructure, plug it to your Nginx and make is serve your Airbnb clone project.

Resources
Read or watch:

Application server vs web server
How to Serve a Flask Application with Gunicorn and Nginx on Ubuntu 16.04 (As mentioned in the video, do not install Gunicorn using virtualenv, just install everything globally)
Running Gunicorn
Be careful with the way Flask manages slash in route - strict_slashes
Upstart documentation
Requirements
General
A README.md file, at the root of the folder of the project, is mandatory
Everything Python-related must be done using python3
All config files must have comments
Bash Scripts
All your files will be interpreted on Ubuntu 16.04 LTS
All your files should end with a new line
All your Bash script files must be executable
Your Bash script must pass Shellcheck (version 0.3.7-5~ubuntu16.04.1 via apt-get) without any error
The first line of all your Bash scripts should be exactly #!/usr/bin/env bash
The second line of all your Bash scripts should be a comment explaining what is the script doing
Your servers
Name	Username	IP	State	
282575-web-01	ubuntu	54.157.164.80	running	
282575-web-02	ubuntu	54.157.152.244	running	
282575-lb-01	ubuntu	54.160.69.34	running	
