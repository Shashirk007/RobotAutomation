pipeline {
    agent any

    stages {

        stage('Checkout Code') {
            steps {
                echo 'Downloading code from GitHub...'

                checkout scm

                echo 'Checkout completed.'
            }
        }

    }
}
