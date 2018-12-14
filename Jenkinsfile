pipeline {
  agent {
    node {
      label 'jenkins-slave'
    }
  }
  stages {
    stage('Checkout') {
      steps {
        deleteDir()
        dir('source') {
          checkout scm
        }
      }
    }

    stage('Test') {
      steps {
        script {
          sh '. ./build-test.sh'
        }
      }
    }
  }
}
