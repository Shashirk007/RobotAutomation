pipeline {
    agent any

    environment {
        PYTHON = 'C:\\Users\\mayan\\AppData\\Local\\Programs\\Python\\Python313\\python.exe'
    }

    stages {

        stage('Checkout Code') {
            steps {
                echo 'Downloading code from GitHub...'
                checkout scm
            }
        }

        stage('Setup Python') {
            steps {
                bat '"%PYTHON%" --version'
            }
        }

    }
}
