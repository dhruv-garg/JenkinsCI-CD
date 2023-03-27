pipeline {
    agent any
    environment {
        IMAGE_REPO_NAME="demo-repository"
        REPOSITORY_URI = "dhruv-garg/${IMAGE_REPO_NAME}"
	DOCKERHUB_CREDENTIALS=credentials('dockerhub')
    }
   
    stages {
        
    // Building Docker images
    stage('Building image') {
      steps{
	sh 'docker build -t dhruvgarg/demo-repository .'
      }
    }

    stage("Loging to DockerHub') {
      steps{
	sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'	
      }
    }
   
    // Uploading Docker images into Docker Hub
    stage('Pushing to Docker Hub') {
     steps{
	sh 'docker push dhruvgarg/demo-repository'
      }
    }      
  }
  post{
    always{
       sh 'docker logout'
    }
  }
}

