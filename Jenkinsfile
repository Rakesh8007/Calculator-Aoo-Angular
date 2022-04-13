pipeline{
    agent any
    environment {
        PATH = "$PATH:/usr/share/apache-maven"
                 }
    stages{
       stage('GetCode'){
            steps{
                git 'https://github.com/Rakesh8007/Calculator-Aoo-Angular.git'
                  }
                       } 
      
       stage('Build'){
            steps{
                sh 'mvn clean package'
                 }
                      }
        stage('SonarQube analysis') {
          def scannerHome = tool 'sonarqube-7.9.5';
        steps{
        withSonarQubeEnv('SonarQube') { 
        // If you have configured more than one global server connection, you can specify its name
//      sh "${scannerHome}/bin/sonar-scanner"
        sh "mvn sonar:sonar"
                      }
        }
        }
       
 //     stage('SonarQube analysis') {
 //   def scannerHome = tool 'SonarScanner 4.7.0.2747';
 //   withSonarQubeEnv('SonarQube') { // If you have configured more than one global server connection, you can specify its name
  //  withSonarQubeEnv('SonarQube') { .. }
 //     sh "${scannerHome}/bin/sonar-scanner"
//    }
 //     }
    }
}
