pipeline{

  agent any
  stages {

   stage('clone project') {
      steps {
           git branch:'master', url:'git@github.com:khwazabani/Terraform.git'
}
}

   stage('terraform init') {
      steps {
         
           sh 'terraform init'
      
   }
   }
   stage('terraform validate') {
      steps {
        
           sh 'terraform validate'
      }
      }
      stage('terraform plan'){
          steps{
              sh 'terraform plan'
          }
      }

stage('terraform apply'){
          steps{
              sh 'terraform apply --auto-approve'
          }
      }

}
}
