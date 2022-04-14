pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'building'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
        stage('ExecuteSonarQubeReport') {
         steps {
             script{
                sh 'npm i'
               // sh 'npm run sonar'
    }
      
        }
        }
    }  
   }