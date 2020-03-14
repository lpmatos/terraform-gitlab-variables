Terraform
============

[![Open Source](https://badges.frapsoft.com/os/v1/open-source.svg?v=102)](https://github.com/lpmatos)

This is a simple Terraform script that uses the GitLab provider to set variables at the group and project level

## Copyright (c)

Lucca Pessoa da Silva Matos (c) 2019 - **GitHub Repository**

## Getting Started

To use this repository you need to make a **git clone**:

```bash
git clone --depth 1 https://github.com/lpmatos/terraform-gitlab-variables.git -b master
```

This will give access on your **local machine** to this project.

## Organization

<-- PUT SOME INFORTION -->

## Description

<-- PUT SOME INFORTION -->

## Pre-Requisites

**Tools**
:---:
**Terraform**

## Structure

**Components** | **Description** | **Tool**
:---: | :---: | :---:
terraform | **Terraform is an open source infrastructure as a code software tool created by HashiCorp** | [Terraform](https://www.terraform.io/docs/index.html)

## Usage

* <kbd>terraform init</kbd> - Install dependencies
* <kbd>terraform validade</kbd> - Validate Terraform
* <kbd>terraform plan</kbd> - Test and Validate the deploy Terraform
* <kbd>terraform apply</kbd> - Deploy Terraform

## YAML File

```yml
token: "<GITLAB_TOKEN>"
enable_gitlab_group_variables: false
group: "<GITLAB_GROUP_NAME>"
project: "<GITLAB_PROJECT_NAME>"
envs:
    A: "A"
    B: "B"
    C: "C"
```

## Built with

- [Terraform](https://www.terraform.io/docs/index.html)

## How to contribute

1. Make a **Fork**.

2. Follow the project organization.

3. Add the file to the appropriate level folder - If the folder does not exist, create according to the standard.

4. Make the **Commit**.

5. Open a **Pull Request**.

6. Wait for your pull request to be accepted.. 🚀

Remember: There is no bad code, there are different views/versions of solving the same problem. 😊

## Add to git and push

You must send the project to your GitHub after the modifications

```bash
git add -f .
git commit -m "Added - Fixing somethings"
git push origin master
```

## Contacts

Hey!! If you like this project or if you find some bugs feel free to contact me in my channels:

---

* **Email**: luccapsm@gmail.com
* **Linkedin**: www.linkedin.com/in/lucca-pessoa-4abb71138/

---

[![Facebook](https://github.frapsoft.com/social/facebook.png)](https://www.facebook.com/lucca.pessoa.9)
[![Github](https://github.frapsoft.com/social/github.png)](https://github.com/lpmatos)

## Versioning

- [CHANGELOG](CHANGELOG.md)

## Project Status

* Finish ✔️
