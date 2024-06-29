pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/Achugh007/firstapp-thirdparty.git' // Specify branch explicitly
            }
        }
        stage('Trigger Cloud Build') {
            steps {
                sh "gcloud builds submit --project sks001 --config cloudbuild.yaml ."
            }
        }
    }
}


