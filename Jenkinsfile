pipeline {
  agent { dockerfile true }
  stages {
    stage('Build') {
      steps {
        sh 'npm install express'
        sh 'node index.js'
      }
    }
  }
}
