pipeline {
    agent any
    tools {
        maven 'MVN'
    }
    stages {
        stage('01 - Test'){
            steps {
                git url: 'https://github.com/kidh0/argentum-web'
                sh 'mvn clean test'
            }
        }
        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
    }
}
