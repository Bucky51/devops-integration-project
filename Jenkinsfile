pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git branch: 'main', url: 'https://github.com/Bucky51/devops-integration-project'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'echo "Building Docker Image..."'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'echo "Running Docker Container..."'
            }
        }
    }
}
