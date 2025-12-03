pipeline {
    agent any

    environment {
        JAVA_IMAGE = 'openjdk:17-jdk'
        PYTHON_IMAGE = 'python:3.12'
    }

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
                    // Build and run Java in a temporary Docker container
                    docker.image(env.JAVA_IMAGE).inside('--rm') {
                        sh 'javac bharat.java'
                        sh 'java Bharat'
                    }
                }
            }
        }

        stage('Run Python') {
            steps {
                script {
                    // Run Python in a temporary Docker container
                    docker.image(env.PYTHON_IMAGE).inside('--rm') {
                        sh 'python bharat.py'
                    }
                }
            }
        }
    }

    post {
        always {
            echo 'Pipeline finished, cleaning up workspace if needed.'
            cleanWs()
        }
        success {
            echo 'Pipeline completed successfully! 🎉'
        }
        failure {
            echo 'Pipeline failed! Check the logs! ❌'
        }
    }
}
