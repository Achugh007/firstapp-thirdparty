pipeline {
    agent any 
    stages {
        stage('Trigger Cloud Build') {
            steps {
                // Optionally, check out the repository first
                git 'git 'https://github.com/Achugh007/firstapp-thirdparty.git' // fetches the default branch' 
                sh "gcloud builds submit --project sks001 --config cloudbuild.yaml ."
            }
        } 
    }
}

