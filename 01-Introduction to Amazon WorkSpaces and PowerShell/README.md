## Learning Objectives

* Amazon WorkSpaces enables you to spin up a cloud-based desktop environment on Windows or Amazon Linux 2
* You don't need to provision any infrastructure to run Virtual Desktop Infrastructure (VDI) on
* You can start / stop WorkSpaces on-demand and only pay for actual consumed compute time
* WorkSpaces client software runs on a variety of operating systems, including MacOS and Windows 10
* Two streaming protocols available: PC-over-IP and WorkSpaces Streaming Protocol (WSP)

* Integrates with AWS Directory Service for end user authentication
* Amazon WorkSpaces has a variety of dependencies:
  * Amazon Virtual Private Cloud (VPC) networking
    * NOTE: VPC must have at least two subnets in different AWS Availability Zones, for Directory Service
  * AWS Directory Service
  * User added to AWS Directory Service

### Why Use AWS Tools for PowerShell?

* There are many supported SDKs for AWS: Python, JavaScript, C#
* PowerShell is an open source and cross-platform automation framework
* Object-oriented, built-in utilities for sorting, filtering, and slicing data

### Use Cases for Integrating WorkSpaces

* Automatically deploy a new desktop environment when a user is onboarded
* Build reproducible engineering desktops with pre-installed tools

### Related Training at CBT Nuggets

* Introduction to AWS Tools for PowerShell
* Managing Amazon VPC with AWS Tools for PowerShell

### What You'll Learn

* How to set up the AWS Tools for PowerShell for Amazon WorkSpaces, and related software development tools
* Create an AWS Directory Service instance
* Configure the Amazon WorkSpaces IAM role and register AWS Directory Service with Amazon WorkSpaces
* Provision an Amazon WorkSpace with PowerShell