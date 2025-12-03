pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/SAMALA-BHARAT-KUMAR/NeuSix.git'
            }
        }

        stage('Build and Run Java') {
            steps {
                script {
                    // Use a valid Java Docker image
                    docker.image('openjdk:17-slim').inside('--rm') {
                        sh 'javac bharat.java'
                        sh 'java Bharat'
                    }
                }
            }
        }

        stage('Run Python') {
            steps {
                script {
                    // Use a valid Python Docker image
                    docker.image('python:3.12').inside('--rm') {
                        sh 'python bharat.py'
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the logs!'
        }
    }
}
