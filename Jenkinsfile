pipeline {
  agent { dockerfile true }
  stages {
    stage('Run') {
      steps {
        sh 'node /usr/app/index.js'
        sh 'curl http://localhost:5000/'
      }
    }
  }
}
