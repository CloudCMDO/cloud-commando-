pipeline {
    agent any

    environment {
        GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-key')
        GIT_TOKEN = credentials('git-token')
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'Dev1', url: 'https://github.com/CloudCMDO/cloud-commando-.git'
            }
        }

        stage('Terraform Init') {
            steps {
                script {
                    sh 'terraform init'
                }
            }
        }

        stage('Terraform Plan') {
            steps {
                script {
                    sh 'terraform plan -out=tfplan'
                }
            }
        }

        // Uncomment this stage if manual approval is needed
        // stage('Manual Approval') {
        //     steps {
        //         input "Approve?"
        //     }
        // }

        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply tfplan'
                }
                }
            }
        }
    }
}
