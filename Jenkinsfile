pipeline {
    agent {
        docker {
            image 'python:3.10'
        }
    }

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
    }
}
