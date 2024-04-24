pipeline {
  agent { dockerfile true }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }
    stage('Run') {
      steps {
        sh 'index.js'
      }
    }
  }
}
