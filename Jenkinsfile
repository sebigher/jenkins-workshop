pipeline {
    agent any
    tools {
        maven 'MVN'
    }
    stages {
        stage('Clean') {
            steps {
               sh 'mvn clean'
            }
        }
        stage('Test'){
            steps {
                sh 'mvn test'
            }
        }
        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
