@Library('first-shared-lib') _
pipeline {
	agent any
	parameters {
		string(name: 'Username', defaultValue: 'dhruvgarg', description: 'Value of DockerHub username')
	}
	stages {
		stage('PushDevDockerImage') {
			when {
				branch 'test-docker-dev'
			}
			steps {
				buildDockerImage(username: "${params.Username}", project: "test-docker-dev")
			}
		}
		stage('PushProdDockerImage') {
			when {
				branch 'test-docker-prod'
			}
			steps {
				buildDockerImage(username: "${params.Username}", project: "test-docker-prod")
			}
		}
	}
}
