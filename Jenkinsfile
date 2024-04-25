pipeline {
  agent any
  environment {
    CURL_RESPONSE = 'null'
  }
  stages {
    stage('Build') {
      steps {
        sh 'docker build . -t test-image'
      }
    }
    stage('Run') {
      steps {
        //including the "-p 5000:5000" exposes the ports for the container meaning no EXPOSE command is needed in the Dockerfile
        sh 'docker run -d -p 5000:5000 --rm --name test-container test-image'
      }
    }
    stage('Test') {
      steps {
        /*script {
          if (sh (
            script: 'curl --head --silent --fail localhost:5000 dev/null',
            returnStdout: true
          ).trim) {
            sh "echo 'This page exists'"
          } else {
            sh "exit 1"
          }
        }*/
        sh 'curl -s localhost:5000'
      }
    }
  }
}
