pipeline {
  agent { dockerfile true }
  stages {
    stage('Run') {
      steps {
        sh 'node index.js'
      }
    }
  }
}
