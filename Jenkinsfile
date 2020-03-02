pipeline {
  agent { docker { image 'python:3.7-alpine' } }
  stages {
    stage('build') {
      steps {
        sh 'python3 oh-my-tuna.py'
        sh 'pip3 install -r requirements.txt'
      }
    }
    stage('test') {
      steps {
        sh 'python3 test.py'
      }
      post {
        always {
          junit 'test-reports/*.xml'
        }
      }    
    }
  }
}
