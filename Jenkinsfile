pipeline {
  agent { dockerfile true }
  environment { CI = true }
  stages {
    stage ('testing') { 
      steps {
        sh "ls"
        dir ('potato') {
          sh "rake cucumber"
        }
      }
    }
    stage ('deploy') {
      steps {
        sh "go go go"
      }
    }
    stage ('site on air') {
      steps {
        sh "rails s"
      }
    }
  }
}