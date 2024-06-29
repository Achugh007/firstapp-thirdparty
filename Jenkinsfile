pipeline {
    agent any 
    stages {
        stage('Checkout') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/main']], extensions: [[$class: 'CleanBeforeCheckout']], userRemoteConfigs: [[credentialsId: 'YOUR_GITHUB_CREDENTIAL_ID', url: 'https://github.com/Achugh007/firstapp-thirdparty']]]) 
            }
        }
        stage('Trigger Cloud Build') {
            steps {
                sh "gcloud builds submit --project sks001 --config cloudbuild.yaml ."
            }
        } 
    }
}
