pipeline {
  agent jenkins-slave
  stages {
    stage('Checkout') {
      steps {
        deleteDir()
        dir('source') {
          checkout scm
        }
      }
    }
  }
}
