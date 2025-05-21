# Personal Website Deployment on Google Cloud

This contains the files and documentation for deploying a personal website on Google Cloud Platform (GCP) as part of the CLOD2007 - Associate Cloud Engineering in-class Assignment 1.

## Project Overview
This project focuses on hosting a static website using Google Cloud Storage while automating infrastructure deployment with Terraform. It covers essential steps like configuring a storage bucket, enabling public access, and troubleshooting potential deployment issues.

## Repository Files
- `index.html` – The main HTML file for structuring the website.
- `style.css` – The CSS file responsible for styling.
- `script.js` - The javascript file.
- `main.tf` – The Terraform configuration file that provisions the required GCP resources.

## Deployment Workflow
### 1. Website Structure
The personal website was built using a simple HTML framework styled with CSS.

### 2. Local Testing
The `index.html` file was tested in a browser to verify its display.

### 3. Version Control with GitHub
Project files were uploaded to a GitHub repository named `kartik_portfolio`.

### 4. Initial Hosting on Netlify
Before moving to Google Cloud, the website was temporarily hosted on Netlify.

### 5. Google Cloud Configuration
- Enabled the IAM Service Account Credentials API.
- Enabled the Compute Engine API.
- Created a Google Cloud Storage bucket (`ex_bucket123456`).

### 6. Terraform Deployment
- Defined the storage bucket and its properties using the `main.tf` Terraform configuration file.
- Configured website settings (main page set to `index.html`, error page set to `404.html`).
- Set IAM permissions to allow public access to objects in the bucket.
- Initialized Terraform (`terraform init`).
- Manually uploaded `index.html`, `style.css`, and `main.tf` to Google Cloud Shell.
- Deployed infrastructure using `terraform apply`.

## Notes
This project demonstrates foundational cloud deployment practices using Terraform and Google Cloud. Future improvements may include automation enhancements or additional security configurations.
Link: https://cute-marigold-9046cd.netlify.app/