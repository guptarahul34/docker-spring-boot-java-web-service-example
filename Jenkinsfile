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
                sh 'mvn clean package -Dmaven.clean.skip=true'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t rahulgupta9794/spring-boot-docker:$BUILD_NUMBER .'
            }
        }

        stage('Push DOcker Image') {
            steps {
                sh '''
                    echo $DOCKERHUB_PSW | docker login -u $DOCKERHUB_USR --password-stdin                
                '''
            }
        }
    }
}
