pipeline {
    agent any

    stages {
        // stage('install dependencies'){
        //     sh 'npm install'
        // }
        stage('Build') {
            steps {
                echo 'building'
                sh 'chown -R whoami /usr/lib/node_modules'
                sh 'npm install -g @angular/cli'
                sh 'npm install'
                sh 'npm run build'
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
                sh './script/deploy.sh'
            }
        }
        // stage('ExecuteSonarQubeReport') {
        //  steps {
        //      script{
               // sh 'npm run sonar'
    // }
      
    //     }
    //     }
    }  
   }
