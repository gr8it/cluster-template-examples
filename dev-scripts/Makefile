SHELL := /bin/bash

helm_lint:
	echo "Chart lint ... "
	helm lint ../charts/

helm_package:
	echo "Chart package ... "
	helm package ../charts/ -d ../
    
helm_index:
	echo "Charts index file ... "
	helm repo index ../

all: helm_lint helm_package helm_index

clean: 
  