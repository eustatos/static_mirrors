init: 
	sudo apt-get update
	sudo apt-get install wget unzip
	wget https://releases.hashicorp.com/terraform/0.14.3/terraform_0.14.3_linux_amd64.zip
	unzip terraform_0.14.3_linux_amd64.zip
	sudo mv terraform /usr/local/bin/
	rm terraform_0.14.3_linux_amd64.zip

deploy:
	docker build -t mirrors:dev .
	terraform apply -auto-approve

sync:
	rm -rf sync
	wget -P sync -i pages.txt

.PHONY: sync
