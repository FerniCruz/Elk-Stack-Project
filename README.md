## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

!Images/NetworkDiagram.PNG

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the filebeat-playbook.yml file may be used to install only certain pieces of it, such as Filebeat.

 Ansible/filebeat-playbook.yml

This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access to the network.
Load balancers protect the backend pool of webservers, allowing only access to frontend pool via public assigned IP address.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the data and system logs.
Filebeat monitors log files and collects log events and forwards them to elasticsearch.
Metricbeat collects metrics from operating systems and services in use by the server and forwards it to elasticsearch

The configuration details of each machine may be found below.
| Name       | Function   | IP Address | Operating System |
|------------|------------|------------|------------------|
| Jump Box   | Gateway    | 10.0.0.4   | Linux            |
| ELK Server | Log server | 10.1.0.4   | Linux            |
| Web-1      | Web server | 10.0.0.7   | Linux            |
| Web-2      | Web server | 10.0.0.8   | Linux            |
### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
66.75.227.27

Machines within the network can only be accessed by Jump Box.
- IP address: 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name          | Publicly Available | Allowed IP Addresses |
|---------------|--------------------|----------------------|
| Jump Box      | Yes                | 66.75.227.27         |
| ELK Server    | No                 | 10.0.0.4             |
| Web-1         | No                 | 10.0.0.4             |
| Web-2         | No                 | 10.0.0.4             |
| Load Balancer | Yes                | Any                  |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
- Any changes made to the playbook can easily be sent out to all machines corresponding with the correct host within the YAML file and update or change the configurations within the machines.

The playbook implements the following tasks:
- Installing docker.io to the Elk VM
- Increasing virtual memory to 262144
- Downloading a docker elk container
- Enable docker.service on boot

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

Images/ElkDockerPs

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
- Web-1: 10.0.0.7
- Web-2: 10.0.0.8

We have installed the following Beats on these machines:
- Filebeat
- Metricbeat

These Beats allow us to collect the following information from each machine:
- Filebeat collects log data and log events and forwards it to elasticsearch, while Metricbeat collects services in use and the hardware usage by the server

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the VMconfig.yml file to Web server VMs.
- Update the hosts file to include Private IP addresses to your Webservers and Elk machine
- Run the playbook, and navigate to http://[your.VM.IP]:5601/app/kibana to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- _Which file is the playbook? Where do you copy it? the filebeat-playbook.yml. You copy it to the webservers
- _Which file do you update to make Ansible run the playbook on a specific machine? How do I specify which machine to install the ELK server on versus which to install Filebeat on? You update the hosts file to set certain IPs to a host, such as webservers or elk. In the playbook, you choose the host you want the container to run on in the playbook.
- _Which URL do you navigate to in order to check that the ELK server is running? http://[your.VM.IP]:5601/app/kibana
