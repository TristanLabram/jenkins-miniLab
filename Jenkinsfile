pipeline {
  agent any
  /*environment {
    CURL_RESPONSE = 'null'
  }*/
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
        script {
          CURL_RESPONSE = sh (
            script: 'curl -s localhost:5000',
            returnStdout: true
          )
          echo "${CURL_RESPONSE}"
          if (CURL_RESPONSE == "Hello World!"){
            exit 1
          }
        }
      }
    }
  }
}
