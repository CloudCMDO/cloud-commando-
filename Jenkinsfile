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
	    
        stage('Terraform Apply') {
            steps {
                script {
                    sh 'terraform apply tfplan'
                }
            }
        }

        stage('SonarCloud Analysis') {
            steps {
                script {
                    def scannerHome = tool 'SonarQube Scanner'
                    withSonarQubeEnv('SonarCloud')
                        sh "${scannerHome}/bin/sonar-scanner -Dsonar.projectKey=your_project_key -Dsonar.organization=your_org -Dsonar.host.url=https://sonarcloud.io -Dsonar.login=${SONAR_TOKEN}"
                    }
                }
            }
        }
    }

     post {
        success {
            echo 'SonarCloud analysis completed successfully.'
        }
        failure {
            echo 'SonarCloud analysis failed.'
        }
    }
}

	    
    }
}
