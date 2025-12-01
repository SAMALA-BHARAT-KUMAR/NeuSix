pipeline {
    agent {
        docker { image 'python:3.10' }
    }

    stages {
        stage('Clone Code') {
            steps {
                echo "Repository downloaded!"
            }
        }

        stage('Install Requirements') {
            steps {
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run Python App') {
            steps {
                sh 'python bharat.py'
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker --version'
                sh 'docker build -t bharat-image .'
            }
        }

        stage('Run Docker Container') {
            steps {
                sh 'docker run -d --name bharat-container bharat-image'
            }
        }
    }
}

