pipeline {
  agent {
    node {
      label 'jenkins-slave'
      env.NODEJS_HOME = "${tool 'Node 6.x'}"
      // on linux / mac
      env.PATH="${env.NODEJS_HOME}/bin:${env.PATH}"
      // on windows
      env.PATH="${env.NODEJS_HOME};${env.PATH}"
      sh 'npm --version'
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
