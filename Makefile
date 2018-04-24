COVERAGE = $$(grep -E 'chefSpecCoverageThreshold[[:space:]]{0,}=' ci/jenkins.groovy | sed "s|^..*=||;s|[ '\"]||g")
FOODCRITIC = $$(grep -E 'foodcriticExtraTags[[:space:]]{0,}=' ci/jenkins.groovy | sed "s|^..*=||;s|[ '\"]||g")
SHELL = /bin/bash

options:
	@echo "Options:"
	@echo "     make clean"
	@echo "     make test"
	@echo "     make deploy"

#init:

clean:
	@echo -e "\nClean:"
	mvn clean

test:
	@echo -e "\nTest:"
	mvn test

deploy:
	@echo -e "\nDeploy:"
	@echo -e "\nDeploying"
