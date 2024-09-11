pipeline {
    agent any

    tools {
        maven 'MAVEN'
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
    }
}
