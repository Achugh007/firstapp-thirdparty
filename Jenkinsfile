Configure Jenkins Job:

In Jenkins, create a new Pipeline job.

Pipeline script (use a Jenkinsfile or define directly):

Groovy
pipeline {
    agent any 
    stages {
        stage('Trigger Cloud Build') {
            steps {
                // Optionally, check out the repository first
                git 'https://your-repo-url.git' 
                sh "gcloud builds submit --project sks001 --config cloudbuild.yaml ."
            }
        } 
    }
}
Use code with caution.
content_copy
Save the job.
