pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    stages{
        stage('Terraform init'){
            steps{
                bat 'terraform init'
            }
        }
        stage('Terraform apply'){
            steps{
                bat 'terraform apply -var="name=shubham20800" --auto-approve'
            }
        }
    }
}
