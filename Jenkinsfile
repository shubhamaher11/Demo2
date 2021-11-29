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
                bat 'terraform apply -var="name=%bucket%" --auto-approve'
            }
        }
        
        stage('Terraform remove state'){
            steps{
                bat 'terraform state rm "aws_s3_bucket.first5"'
            }
        }
    }
}
