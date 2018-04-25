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
                cleanWs()
            }
        }
        stage('02 - Package') {
            steps {
                git url: 'https://github.com/kidh0/argentum-web'
                sh 'mvn package'
            }
        }
        stage('03 - Deploy') {
            steps {
                sh 'curl -s --upload-file ${WORKSPACE}/target/argentum-web.war "http://jenkins:jenkins@tomcat:8080/manager/text/deploy?path=/argentum-web&update=true"'
            }
        }
    }
}
