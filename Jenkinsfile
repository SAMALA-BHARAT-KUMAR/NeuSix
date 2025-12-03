pipeline {
    agent any

    stages {
        stage('Pull Code') {
            steps {
                git 'https://github.com/SAMALA-BHARAT-KUMAR/NeuSix.git'
                echo 'Code pulled from GitHub!'
            }
        }

        stage('Run Python in Docker') {
            steps {
                script {
                    // Pull Python Docker image and run the Python script
                    docker.image('python:3.12').inside {
                        sh 'python bharat.py'
                    }
                }
            }
        }
    }

    post {
        success {
            echo 'Pipeline executed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the logs!'
        }
    }
}
