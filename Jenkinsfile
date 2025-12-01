pipeline {
    agent any

    stages {
        stage('Install Python') {
            steps {
                sh '''
                apt-get update
                apt-get install -y python3 python3-pip
                '''
            }
        }

        stage('Install Requirements') {
            steps {
                sh 'pip3 install -r requirements.txt'
            }
        }

        stage('Run Python App') {
            steps {
                sh 'python3 bharat.py'
            }
        }
    }
}
