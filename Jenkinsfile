pipeline {
  agent any
  environment {
     GOOGLE_APPLICATION_CREDENTIALS = credentials('gcp-sa')
  }
  stages {
     stage ("connecting to git") {
        steps{
          git branch : "main", url : "https://github.com/ganesh-redy/Jenkin-gcp-instance.git"
        }
    }

    stage ("terraform initlation"){
        steps{
          sh "terraform init"
          sh "terraform plan"
          sh "terraform apply -auto-approve"  
        }
    }
  }

}

