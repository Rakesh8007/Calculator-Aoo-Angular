node {
  stage('Clone the Git') {
    git 'https://github.com/Rakesh8007/Calculator-Aoo-Angular.git'
  }
  stage('SonarQube analysis') {
    def scannerHome = tool 'sonarqube';
    withSonarQubeEnv('sonarqube') {
      sh "${scannerHome}/bin/sonar-scanner \
      -D sonar.login=admin \
      -D sonar.password=admin \
      -D sonar.projectKey=sonarqubetest \
      -D sonar.exclusions=vendor/**,resources/**,**/*.java \
      -D sonar.host.url=http://localhost:9000//"
    }
  }
}
