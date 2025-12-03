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
                    // Using Eclipse Temurin Java image
                    docker.image('eclipse-temurin:17').inside('--rm') {
                        // Compile Java
                        sh 'javac bharat.java'
                        // Run Java
                        sh 'java bharat'
                    }
                }
            }
        }

        stage('Run Python') {
            steps {
                script {
                    // Using official Python Docker image
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
