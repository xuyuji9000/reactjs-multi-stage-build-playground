pipeline {
  agent {
    node {
      label 'jenkins-slave'
    }
  }

  tools {nodejs "node"}

  stages {
    stage('Checkout') {
      steps {
        deleteDir()
        dir('source') {
          checkout scm
        }
      }
    }

    // stage('Test') {
    //   environment {
    //     SOURCE_PATH = "${env.WORKSPACE}/source/"
    //   }
    //   steps {
    //     script {
    //       sh '''
    //       echo $USER
    //       ls -lat
    //       cd $SOURCE_PATH
    //       ls -lat
    //       . ./build-test.sh
    //       . ./copy-coverage.sh
    //       '''
    //     }
    //   }
    //   post {
    //     always {
    //       step([$class: 'CoberturaPublisher',
    //             coberturaReportFile: 'source/coverage/cobertura-coverage.xml',
    //             failUnhealthy: true,
    //             failUnstable: true,
    //             lineCoverageTargets: '90.0, 80.1, 50'])
    //     }
    //   }
    // }
    stage("Build") {
      steps {
        script {
          sh '''
          node --version
          '''
        }
      }
    }
  }
}
