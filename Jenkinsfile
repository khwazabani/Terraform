pipeline{

  agent any
   environment {
        AZURERM_CLIENT_ID       = credentials('azure_client_id')
        AZURERM_CLIENT_SECRET   = credentials('azure_client_secret')
        AZURERM_TENANT_ID       = credentials('azure_tenant_id')
        AZURERM_SUBSCRIPTION_ID = credentials('azure_subscription_id')
    }

  stages {
    
   stage('clone project') {
      steps {
           git branch:'master', url:'https://github.com/khwazabani/Terraform.git'
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
