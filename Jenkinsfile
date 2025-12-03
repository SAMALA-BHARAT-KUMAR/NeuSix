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
    }
}
