pipeline {
    agent { label 'DEV' }
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
        stage('stashthejarfile') {
            steps{
                stash name: 'spc-jar',
                      includes: '**/target/spring-petclinic-3.0.0-SNAPSHOT.jar'
            }
        }
        stage('unstashthejarfile') {
            agent { label 'K8S'}
            steps {
                unstash name: 'spc-jar'
            }
        }
        /*stage('sonar') {
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
                docker tag spring-image:1.0 jfrogproject123.jfrog.io/pipeline-docker/spring-image:1.0
                docker push jfrogproject123.jfrog.io/pipeline-docker/spring-image:1.0
                """
        }
    }*/
}
}