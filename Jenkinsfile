pipeline {
  agent none
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
