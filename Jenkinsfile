pipeline {
    agent any 
    stages {
        stage('Checkout') {
            steps {
                // Always checkout before trying to build
                checkout([$class: 'GitSCM', branches: [[name: 'main']], extensions: [], userRemoteConfigs: [[credentialsId: '0bc31df3-9f4d-4b47-bc3b-29baafc5fee7', url: 'https://github.com/Achugh007/firstapp-thirdparty']]])
            }
        }
        stage('Trigger Cloud Build') {
            steps {
                sh "gcloud builds submit --project sks001 --config cloudbuild.yaml ."
            }
        } 
    }
}

