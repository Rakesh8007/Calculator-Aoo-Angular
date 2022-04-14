pipeline{
    agent any
    environment {
        PATH = "$PATH:/usr/share/apache-maven"
    }
    stages{
      // stage('GetCode'){
        //     steps{
        //         git 'https://github.com/Rakesh8007/Calculator-Aoo-Angular.git'
        //     }
        //  } 
       stage('Install dependencies') {
        nodejs('nodejs') {
            sh 'npm install'
            echo "Modules installed"
        }
        }
       stage('Build') {
        nodejs('nodejs') {
            sh 'npm run build'
            echo "Build completed"
        }
        
    }
    stage('Deploy'){
            steps{
                sh './script/deploy.sh'
            }
         }
        stage('SonarQube analysis') {
//    def scannerHome = tool 'SonarScanner 4.0';
        steps{
        withSonarQubeEnv('SonarQube-7.9.5') { 
        // If you have configured more than one global server connection, you can specify its name
//      sh "${scannerHome}/bin/sonar-scanner"
        sh "mvn sonar:sonar"
    }
        }
        }
       
    }
}
