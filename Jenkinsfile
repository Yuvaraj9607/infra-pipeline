pipeline {
    agent any

    environment {
        AWS_DEFAULT_REGION    = 'ap-south-1'
    }
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master',
                    url: 'https://github.com/Yuvaraj9607/infra-pipeline.git'
            }
        }
        stage('Terraform') {
            steps {
               withCredentials([[
    $class: 'AmazonWebServicesCredentialsBinding',
    credentialsId: 'aws-credentials'
]]) {
    sh 'terraform init'
    sh 'terraform validate'
    sh 'terraform plan'
    sh 'terraform apply -auto-approve'
}
