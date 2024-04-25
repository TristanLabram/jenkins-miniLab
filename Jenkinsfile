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
        sh 'docker run -d -p 5000:5000 -- name test-container test-image
      }
    }
  }
}
