pipeline {
  agent any
  environment {
     GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-key')
  }
  stages {
     stage ("connecting to git") {
        steps{
          git branch : "main", url : "https://github.com/ganesh-redy/instance-template.git"
        }
    }

    stage ("terraform initlation"){
        steps{
          sh "terraform init"
          sh "terraform plan"
          sh "terraform destory -auto-approve"  
        }
    }
  }

}

