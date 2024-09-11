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
    }
}
