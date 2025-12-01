pipeline {
    agent {
        docker { "python 3.10" }
    }

    stages {

        stage('Clone Code') {
            steps {
                echo "Repository downloaded successfully!"
            }
        }

        stage('Install Requirements') {
            steps {
                echo "Installing Python libraries..."
                sh 'pip install -r requirements.txt'
            }
        }

        stage('Run Python App') {
            steps {
                echo "Running bharat.py..."
                sh 'python3 bharat.py'
            }
        }

        stage('Build Docker Image') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t bharat-image:latest .'
            }
        }

        stage('Run Docker Container') {
            steps {
                echo "Running Docker container..."
                sh 'docker run -d bharat-image'
            }
        }
    }

    post {
        always {
            echo "Pipeline completed successfully!"
        }
    }
}
