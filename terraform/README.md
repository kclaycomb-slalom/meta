<p align="center">
  <a href="https://example.com/">
    <img src="https://via.placeholder.com/72" alt="Logo" width=72 height=72>
  </a>

  <h3 align="center">Logo</h3>

  <p align="center">
    Short description
    <br>
    <a href="https://reponame/issues/new?template=bug.md">Report bug</a>
    ·
    <a href="https://reponame/issues/new?template=feature.md&labels=feature">Request feature</a>
  </p>
</p>


## Table of contents

- [Quick start](#quick-start)
- [Status](#status)
- [What's included](#whats-included)
- [Bugs and feature requests](#bugs-and-feature-requests)
- [Contributing](#contributing)
- [Creators](#creators)
- [Thanks](#thanks)
- [Copyright and license](#copyright-and-license)


## Quick start

Some text

- Instruction 1
- Instruction 2
- Instruction 3

## Status

Here goes all the budgets

## Architecture
![Architecture](packer-ansible-terraform.png)


```Tree structure
.
├── Makefile
├── README.md
├── packer-ansible-terraform.png
├── ec2
│   ├── Makefile
│   ├── README.md
│   ├── backend.tf
│   ├── data.tf
│   ├── doc.txt
│   ├── ec2.tf
│   ├── locals.tf
│   ├── outputs.tf
│   ├── providers.tf
│   ├── user-key.tf
│   └── variables.tf
└── modules
    └── terraform-aws-ec2-instance
```
