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
      environment {
        SOURCE_PATH = "${env.WORKSPACE}/source/"
      }
      steps {
        script {
          sh '''
          ls -lat
          cd $SOURCE_PATH
          ls -lat
          . ./build-test.sh
          '''
        }
      }
    }
  }
}
