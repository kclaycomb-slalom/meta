# Terraform Taxonomy
APP     := meta-onboarding
ACCOUNT := 250251693220
ENV     := dev
REGION  := us-west-2
BUCKET  := tfstate-bucket-$(ACCOUNT)

# Backend info
PROFILE := default
STATE_FILE=$(APP)/$(ENV)/$(REGION)/infrastructure.tfstate

all: setup

clean:
	rm -fr ./.terraform *tfstate .terraform.lock.hcl

setup:
	terraform init \
		-backend-config="profile=$(PROFILE)" \
		-backend-config="region=us-west-1" \
		-backend-config="acl=bucket-owner-full-control" \
		-backend-config="bucket=$(BUCKET)" \
		-backend-config="key=state/$(STATE_FILE)" && \
	terraform state pull

pull: setup
	terraform get -update && \
	terraform state pull

validate: pull
	terraform validate \
		-var "env=$(ENV)" \
		-var "app=$(APP)" \
		-var "account=$(ACCOUNT)" \
		-var "region=$(REGION)" \
		-var "profile=$(PROFILE)"

plan: pull
	terraform plan \
		-var "env=$(ENV)" \
		-var "app=$(APP)" \
		-var "account=$(ACCOUNT)" \
		-var "region=$(REGION)" \
		-var "profile=$(PROFILE)"

apply: pull
	terraform apply \
		-auto-approve \
		-var "env=$(ENV)" \
		-var "app=$(APP)" \
		-var "account=$(ACCOUNT)" \
		-var "region=$(REGION)" \
		-var "profile=$(PROFILE)"

destroy: pull
	terraform destroy \
		-var "env=$(ENV)" \
		-var "app=$(APP)" \
		-var "account=$(ACCOUNT)" \
		-var "region=$(REGION)" \
		-var "profile=$(PROFILE)"

docs:
	terraform-docs -c ../.terraform-docs.yml  md . > README.md
