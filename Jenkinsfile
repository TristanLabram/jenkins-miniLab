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
          env.CURL_RESPONSE = sh (
            script: 'curl -s localhost:5000',
            returnStdout: true
          )
          echo "${env.CURL_RESPONSE}"
          if (env.CURL_RESPONSE != "Hello World!"){
            sh 'exit 1'
          }
        }
      }
    }
    stage('Clean up') {
      steps {
        script {
           echo "${env.CURL_RESPONSE}"
        }
        sh 'docker stop test-container'
        sh 'docker image rm test-image'
      }
    }
  }
}
