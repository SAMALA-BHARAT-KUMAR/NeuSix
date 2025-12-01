pipeline {
    agent any

    stages {
        stage('Checkout Code') {
            steps {
                git branch: 'main', url: 'https://github.com/SAMALA-BHARAT-KUMAR/NeuSix'
                echo "Repository cloned successfully!"
            }
        }

        stage('Show Files') {
            steps {
                sh 'ls -l'
            }
        }

        stage('Run Python App') {
            steps {
                // Run your Python script if python3 exists
                sh 'python3 bharat.py || echo "Python not found, skipping execution"'
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
