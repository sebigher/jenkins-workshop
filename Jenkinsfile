pipeline {
    agent any
    tools {
        maven 'MVN'
    }
    environment {
        TOMCAT_CREDS = credentials('jenkins')
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
            environment {
                TOMCAT_CREDS = credentials('tomcat-credentials')
            }
            steps {
                sh 'curl -s --upload-file ${WORKSPACE}/target/argentum-web.war "http://${TOMCAT_CREDS_USR}:${TOMCAT_CREDS_PSW}@tomcat:8080/manager/text/deploy?path=/argentum-web&update=true"'
            }
        }
    }
}
