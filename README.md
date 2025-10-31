
# DevOps Intern Final Assessment

**Name:** Debasis Nayak  
**Date:** October 31, 2025  

## Project Explanation

This project demonstrates a complete **DevOps workflow** using open-source tools such as **Linux**, **Git**, **Docker**, **GitHub Actions (CI/CD)**, **Nomad**, and **Grafana Loki**.  
Each step builds upon the previous one — from basic scripting and containerization to automation, deployment, and monitoring — simulating a small but realistic DevOps pipeline.


##  Step 1: Git & GitHub Setup

- Created a **public GitHub repository** named `devops-intern-final`.
- Added `README.md` and a sample `hello.py` that prints “Hello, DevOps!”.

###  Run Command
```bash
python hello.py

Created a shell script scripts/sysinfo.sh that displays:
Current user
Current date
Disk usage
bash scripts/sysinfo.sh

Step 3: Docker Basics
Containerized the Python app using Dockerfile.
docker build -t hello-devops .
docker run hello-devops

Step 4: CI/CD with GitHub Actions
Configured a GitHub Actions workflow to automatically test the app on every push.

Step 5: Job Deployment with Nomad
Deployed the app as a Nomad service.
 File: nomad/hello.nomad
nomad job run nomad/hello.nomad
nomad job status hello-devops
nomad alloc logs <allocation_id>

Step 6: Monitoring with Grafana Loki
Configured Grafana Loki for centralized log collection and Promtail for log forwarding.
docker run -d --name=loki \
  -p 3100:3100 \
  grafana/loki:2.9.0


