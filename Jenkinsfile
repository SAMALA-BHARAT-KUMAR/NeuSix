pipeline {
    agent any

    stages {
        stage('Pull Code') {
            steps {
                echo "Code pulled from GitHub!"
            }
        }
        stage('Run Python') {
            steps {
                sh 'python3 bharat.py'
            }
        }
        stage('Build Docker Image') {
            steps {
                sh 'docker build -t neu-six-image .'
            }
        }
        stage('Run Docker Container') {
            steps {
                sh 'docker run --rm neu-six-image'
            }
        }
    }
}
