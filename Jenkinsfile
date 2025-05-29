pipeline {
    agent any

    stages {
        stage('Checkout SCM') {
            steps {
                // Checkout the main branch explicitly
                git branch: 'main', url: 'https://github.com/Bucky51/devops-integration-project'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker Image...'
                // Build the docker image with a tag (replace my-app-image with your image name)
                bat 'docker build -t my-app-image .'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo 'Running Docker Container...'
                // Stop and remove container if it exists
                bat '''
                docker rm -f flask-app || echo "No container to remove"
                docker run -d --name flask-app -p 5000:5000 my-app-image
                '''
            }
        }
    }

    post {
        failure {
            echo 'Build failed!'
        }
        success {
            echo 'Build succeeded!'
        }
    }
}
