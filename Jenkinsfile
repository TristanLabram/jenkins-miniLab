pipeline {
  agent { dockerfile true }
  stages {
    stage('Build') {
      steps {
        sh 'node index.js'
      }
    }
  }
}
