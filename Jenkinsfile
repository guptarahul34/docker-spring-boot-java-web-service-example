pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package -Dmaven.clean.skip=true'
            }
        }
    }
}
