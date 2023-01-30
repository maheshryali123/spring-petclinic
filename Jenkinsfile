pipeline {
    agent { label 'SPRING' }
    triggers { pollSCM('* * * * *') }
    stages {
        stage('git') {
            steps {
                git branch: 'main',
                       url: 'https://github.com/maheshryali123/spring-petclinic.git'
            }
        }
        stage('build') {
            steps {
                sh """
                mvn package
                """
            }
        }
        stage('sonar') {
            steps {
                withSonarQubeEnv('sonarscan') {
                    sh 'mvn clean package sonar:sonar'
                }
            }
        }
        stage('build_docker') {
            steps {
                sh """
                docker image build -t spring-image:1.0 .
                """
        }
    }
}