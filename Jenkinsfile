pipeline {
    agent any
    
    tools {
        terraform 'Terraform'
    }
    
    environment {
        //Credentials for Prod environment
        AWS_ACCESS_KEY_ID     = credentials('AWS_ACCESS_KEY_ID') 
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    

    stages {
        stage('SCM checkout') {
            steps {
                echo 'cloning code base with jenkins server'
                echo 'testing CI code base with jenkins server'
                echo 'testing CD code base with jenkins server'
                git branch: 'main', credentialsId: '2802993a-6d2b-4062-a3ba-e7aba5749144', url: 'https://github.com/topGuru77/airbnb-tf-infra.git'
                sh 'ls'
            }
        }
        
        stage('terraform init') {
            steps {
                sh 'terraform init'
            }
        }
            
        stage('terraform plan') {
            steps {
                sh 'terraform plan'
            }
        }
        
        stage('terraform action to apply or destroy plan') {
            steps {
               sh 'terraform ${action} --auto-approve'
            }
        }
            
    }    
    
}
