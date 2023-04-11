## Table of contents

- [Quick start](#quick-start)
- [Architecture](#architecture)
- [Creators](#creators)


## Quick start

There are a few assumptions about the terraform code.
# The code should be immutable
# Mutable code should go into the terraform wrapper -> Makefile


Running the code should be as easy as
- `make setup`
- `make plan`
- `make apply`
- `make destroy`

## Architecture
![Architecture](packer-ansible-terraform.png)

```
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

## Creators
- Kirk Larsen - kirkl@slalom.com
- Sahithya Kodam - sahithya.kodam@slalom.com
- Kyle Clayborn - kyle.claycomb@slalom.com
