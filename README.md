# Practical MLOps Book Exercises

## Overview

This repository contains **chapter 1** exercises files and resources for the "Practical MLOps" book. These exercises provide practical examples of MLOps concepts.

<p align="center">
  <img src="https://learning.oreilly.com/library/cover/9781098103002/250w/" alt="Descrição da imagem">
</p>

## Repository Structure

```
.
├── Dockerfile                  # Docker configuration file
├── Makefile                    # Makefile for automating commands
├── README.md                   # This README file
├── buildspec.yml               # Build specifications for CI/CD
├── exercises.md                # Markdown file with exercise descriptions
├── infra                       # Infrastructure as code (IaC) files
│   ├── main-infrastructure     # Main infrastructure setup
│   └── terraform-backend-setup # Terraform backend configuration
├── locustfile.py               # Locust file for load testing
├── requirements.txt            # Python dependencies
├── src                         # Source code directory
│   └── main.py                 # Main application file
└── tests                       # Test scripts
    └── test_main.py            # Test for main.py
```

## Getting Started

### Prerequisites

- Docker
- Terraform
- Python 3.x

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/plbalmeida/practical-mlops-ch1-exercises.git
   ```
> Remember to replace variables on the `variables.tf` files and also parameters on  `infra/main-infrastructure/backend.tf` with your own AWS ARNs, ID accounts etc.

2. Set up your AWS keys for GitHub Actions (https://docs.github.com/pt/actions/security-guides/using-secrets-in-github-actions) 

3. Before deploying the infrastructure and running the CI/CD pipeline for main resources, first deploy resources for the Terraform file state in an S3 backend merging to the `terraform-backend-setup` branch, after merge to the `main` branch, the AWS resources required on the exercise will be created. To destroy AWS resources built by `workflow.yml` merge to `destroy-infra` branch.

## Acknowledgments

- Practical MLOps book authors Noah Gift and Alfredo Deza.
- O'Reilly Media.

---