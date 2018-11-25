pipeline {
  agent none
  stages {
    stage('Checkout') {
      deleteDir()
      dir('source') {
        checkout scm
      }
    }
  }
}
