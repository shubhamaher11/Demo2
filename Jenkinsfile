pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    stages{
        stage('Terraform init'){
            steps{
                sh 'terraform init'
            }
        }
        stage('Terraform apply'){
            steps{
                sh 'terraform apply -var="name=shubham20500" --auto-approve'
            }
        }
    }
}
