pipeline {
  agent any
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
        CURL_RESPONSE = sh (
          script: 'curl localhost:5000',
          returnStdout: true
        ).trim()
        if (CURL_RESPONSE != "Hello World!") {
          sh "exit 1"
        }
      }
    }
  }
}
