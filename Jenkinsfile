pipeline {
    agent {label "docker-node"} 
    environment {
    DOCKERHUB_CREDENTIALS = credentials('docker-nitin')
    }
    stages { 
        stage('SCM Checkout') {
            steps{
            git 'https://github.com/nj-cancerian/my-nodeproject.git'
            }
        }

        stage('Build docker image') {
            steps {  
                sh 'docker build -t nitjoshi/nodeapp:$BUILD_NUMBER .'
            }
        }
        stage('login to dockerhub') {
            steps{
                sh 'echo $DOCKERHUB_CREDENTIALS_PSW | docker login -u $DOCKERHUB_CREDENTIALS_USR --password-stdin'
            }
        }
        stage('push image') {
            steps{
                sh 'docker push nitjoshi/nodeapp:$BUILD_NUMBER'
            }
        }
}
post {
        always {
            sh 'docker logout'
        }
    }
}
