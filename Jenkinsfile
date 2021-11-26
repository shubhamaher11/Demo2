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
        
        stage('Terraform remove state'){
            steps{
                sh 'terraform state rm "aws_s3_bucket.first5"'
            }
        }
        stage('Terraform apply'){
            steps{
                sh 'terraform apply -var="name=${bucket}" --auto-approve'
            }
        }
        
        
    }
}
