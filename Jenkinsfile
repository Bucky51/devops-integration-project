pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/Bucky51/devops-integration-project'
            }
        }

        stage('Build Docker Image') {
            steps {
                bat 'echo "Building Docker Image..."'
                bat 'docker build -t my-app-image .'
            }
        }

        stage('Run Docker Container') {
            steps {
                bat 'docker run -d --name flask-app -p 5000:5000 my-app-image'
            }
        }
    }
}
