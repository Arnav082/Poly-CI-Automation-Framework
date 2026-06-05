pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                url: 'https://github.com/Arnav082/Poly-CI-Automation-Framework.git'
            }
        }

        stage('Install Dependencies') {
            steps {
                sh 'pip3 install -r requirements.txt --break-system-packages'
            }
        }

        stage('Run Tests') {
            steps {
                sh 'PYTHONPATH=. pytest'
            }
        }

        stage('Deploy') {
            steps {
                sh 'chmod +x scripts/deploy.sh'
                sh './scripts/deploy.sh' 
            }
        }
    }

    post {
        success {
            echo 'Application deployed successfully'
        }

        failure {
            echo 'Pipeline failed'
        }
    }
}
