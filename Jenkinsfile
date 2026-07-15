pipeline {
    agent any

    environment {
        PYTHON = 'C:\\Users\\mayan\\AppData\\Local\\Programs\\Python\\Python313\\python.exe'
    }

    stages {

        stage('Checkout Code') {
            steps {
                echo 'Downloading source code...'
                checkout scm
            }
        }

        stage('Create Virtual Environment') {
            steps {
                bat '"%PYTHON%" -m venv venv'
            }
        }

        stage('Install Dependencies') {
            steps {
                bat '''
                call venv\\Scripts\\activate
                python -m pip install -r requirements.txt
                '''
            }
        }

        stage('Run Robot Tests') {
            steps {
                bat '''
                call venv\\Scripts\\activate
                python -m robot -d reports tests
                '''
        }
    }
        stage('Publish Report') {
            steps {
                step([
                    $class: 'RobotPublisher',
                    outputPath: 'reports',
                    outputFileName: 'output.xml',
                    reportFileName: 'report.html',
                    logFileName: 'log.html'
        ])
    }
}

    }
}
