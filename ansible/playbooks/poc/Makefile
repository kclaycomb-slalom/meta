limit=all
tags=deploy
export

all: clean

clean:
	rm -fr main.retry \
	rm -fr ../../roles/chrisevett.inspec \
	rm -fr ../../roles/brianshumate.consul \
	rm -fr ~/.ansible/roles/*

pull: clean
	ansible-galaxy install -r requirements.yml

playbook: pull
	ansible-playbook main.yml -i ../../inventory/hosts.ini --tags ${tags} --limit ${limit}

test: pull
	ansible-playbook main.yml --tags test --limit ${limit}

build: pull
	ansible-playbook main.yml --tags build --limit ${limit}
