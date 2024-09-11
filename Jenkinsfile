pipeline {
    agent any

    tools {
        maven 'MAVEN'
    }

    environment {
        DOCKERHUB=credentials('dockerhub-credentials')
    }


    stages {
        stage('Build') {
            steps {
                sh 'mvn clean clean'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t rahulgupta9794/spring-boot-docker:$BUILD_NUMBER .'
            }
        }

        stage('Push Docker Image') {
            steps {
                
                sh '''
                    echo $DOCKERHUB_PSW | docker login -u $DOCKERHUB_USR --password-stdin
                    docker push rahulgupta9794/spring-boot-docker:$BUILD_NUMBER               
                '''
            }
        }
    }
}
