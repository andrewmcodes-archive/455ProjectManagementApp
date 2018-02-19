[![Build Status](https://travis-ci.org/andrewmcodes/455ProjectManagementApp.svg?branch=master)](https://travis-ci.org/andrewmcodes/455ProjectManagementApp)
[![Maintainability](https://api.codeclimate.com/v1/badges/246a9cc00d6430458fb1/maintainability)](https://codeclimate.com/github/andrewmcodes/455ProjectManagementApp/maintainability)
<a href="https://codeclimate.com/github/andrewmcodes/455ProjectManagementApp/test_coverage"><img src="https://api.codeclimate.com/v1/badges/246a9cc00d6430458fb1/test_coverage" /></a>
# Project Management App
#### *CSC 455 Project - UNCW, Spring 2018*
  The Project Management App (PMA) is a tool for companies and organizations to increase their productivity through the use of streamlined collaboration and file sharing. The app will utilize software multitenancy architecture along with the software as a service (SaaS) model to allow for the creation of teams with different roles. 

## User Roles
  *As it currently stands, the app will allow for two different types of users.*
###### 1. Admins
- Whoever signs up for the organization account is considered the administrator of that org. The admin has the ability to create, read, update, and delete (CRUD) projects, artifacts, and team members.

###### 2. Team Members
- Once invited to a project by the organization administrator, team members have the ability to execute CRUD operations within their project, but do not have control over the project itself or it's members. 

## Payment Plans
*There are two basic types of plans that you can subscribe to upon the creation of an organization.*
###### 1. Free Plan
   - Ability to upload 5GB of files
   - Secure cloud storage using Amazon Web Services (AWS) cloud computing services
   - Access to responsive, mobile friendly interface
   - Ability to create one project with unlimited members
###### 2. Paid Plan - $10 per month
   - Ability to upload an unlimited amount of files
   - Secure cloud storage using Amazon Web Services (AWS) cloud computing services
   - Access to responsive, mobile friendly interface
   - Ability to create unlimited projects with unlimited members
## Data and Reports
###### 1. The following types of data will be utilized for reports:
- Project names and descriptions
- Organization and team member names
- Project tasks and status
- List of artifacts, with relevant file information
- List of team members assigned to projects/tasks and their individual productivity 

###### 2. We will be generating three main reports with the above data: 
- Project progress reports to ensure deadlines will be met
- Team member productivity for assessment 
- Artifact and file statistics

###### 3. Additional Interactions
- Stripe integration for billing
- AWS integration for storing files in the cloud
- Authentication system with email confirmation, recovery features, and roles
- Tenanted and universal models 
- Static analysis vulnerability scanner
