pipeline {
    agent any

    stages {

        // Stage 1: Checkout Code
        stage('Checkout Code') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/SAMALA-BHARAT-KUMAR/NeuSix.git'
            }
        }

        // Stage 2: Build Java
        stage('Build Java') {
            steps {
                script {
                    // Compile the Java file
                    sh 'javac bharat.java'
                    // Optionally run the Java program
                    sh 'java Bharat'
                }
            }
        }

        // Stage 3: Run Python in Docker
        stage('Run Python') {
            steps {
                script {
                    docker.image('python:3.12').inside {
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
