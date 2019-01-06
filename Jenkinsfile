pipeline {
  agent { dockerfile true }
  environment { CI = true }
  stages {
    stage ('testing') { 
      steps {
        sh "ls"
        dir ('potato') {
          sh "bundle exec cucumber -p default"
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