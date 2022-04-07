pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building..'
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
        stage('Sonarqube') {
            steps {
               container('maven') {
                 script {
                  withSonarQubeEnv('SonarQube') {
                      sh 'mvn clean package sonar:sonar'
                        }
                  timeout(time: 10, unit: 'MINUTES') {
                        waitForQualityGate abortPipeline: true
               }
            }
        }
     }
}
    }
}
