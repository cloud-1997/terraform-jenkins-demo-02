pipeline {
    agent any

    stages {
        stage('checkout') {
            steps {
                git 'https://github.com/cloud-rohit-1997/terraform-jenkins-demo-02.git'
            }
        }
        
        stage('terraform init') {  // Add opening brace here
            steps {
                sh 'terraform init'
            }
        }  // Add closing brace here
        
        stage('terraform plan'){
            steps{
                sh 'terraform plan'
            }
        }
        
        stage('terraform approval'){
            steps{
                script{
                    input message: 'Aprove to proceed with the terraform apply?', ok:'proceed'
                }
            }
            
        }
        
        stage('terraform apply'){
            steps{
                sh 'terraform apply -auto-approve'
            }
        }
    }

}
