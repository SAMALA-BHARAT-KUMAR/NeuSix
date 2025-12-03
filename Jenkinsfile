pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = 'python:3.12'  // Python Docker image
    }

    stages {
        stage('Pull Code') {
            steps {
                git branch: 'main', url: 'https://github.com/SAMALA-BHARAT-KUMAR/NeuSix.git'
                echo 'Code pulled from GitHub!'
            }
        }

        stage('Run Python in Docker') {
            steps {
                script {
                    docker.image(DOCKER_IMAGE).inside {
                        sh 'python3 bharat.py'
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
            echo 'Pipeline failed!'
        }
    }
}
