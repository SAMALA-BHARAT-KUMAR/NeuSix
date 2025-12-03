pipeline {
    agent {
        docker { image 'python:3.10' }  // Jenkins will pull this image if not present
    }
    stages {
        stage('Pull Code') {
            steps {
                git 'https://github.com/SAMALA-BHARAT-KUMAR/NeuSix.git'
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
    }
}
