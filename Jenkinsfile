pipeline{
    agent any
    tools {
        terraform 'terraform-11'
    }
    stages{
        
        stage('LS'){
            steps{
                touch file:'${bucket}.tf'
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
