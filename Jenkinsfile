@Library('first-shared-lib') _
pipeline {
	agent any
	stages {
		stage('Example') {
			steps {
				helloWorldExternal(name:"Dhruv", dayOfWeek: "Thursday")
			}
		}
	}
}
