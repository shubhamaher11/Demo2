pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    stages{
        
        stage('Terraform remove state'){
            steps{
                if (fileExists(".terraform/terraform.tfstate")) {
                    sh "rm -rf .terraform/terraform.tfstate"
                }
            }
        }
        
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        
        stage('Terraform apply'){
            steps{
                sh 'terraform apply -var="name=${bucket}" --auto-approve'
            }
        }
        
        
    }
}
