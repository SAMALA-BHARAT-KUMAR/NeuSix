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
                    // Use Java Docker image
                    docker.image('openjdk:17').inside {
                        sh 'javac bharat.java'
                        sh 'java Bharat'
                    }
                }
            }
        }

        stage('Run Python') {
            steps {
                script {
                    // Use Python Docker image
                    docker.image('python:3.10').inside {
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
