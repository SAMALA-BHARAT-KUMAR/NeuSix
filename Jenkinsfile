pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/SAMALA-BHARAT-KUMAR/NeuSix'
            }
        }

        stage('Say Hello') {
            steps {
                echo "Pipeline is running, Bharat!"
            }
        }

        stage('List Files') {
            steps {
                sh 'ls -l'
            }
        }
    }

    post {
        success {
            echo "Pipeline completed successfully!"
        }
        failure {
            echo "Pipeline failed!"
        }
    }
}
