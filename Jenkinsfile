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
        bat 'docker run -d --name flask-app -p 5000:5000 my-app-image'
    }
}

    }
}
