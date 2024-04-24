pipeline {
  agent { dockerfile true }
  stages {
    stage('Run') {
      steps {
        sh 'node /usr/app/index.js'
      }
    }
  }
}
