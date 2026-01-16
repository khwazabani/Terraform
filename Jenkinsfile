pipeline{

  agent any
   environment {
        AZURE_CLIENT_ID       = credentials('azure_client_id')
        AZURE_CLIENT_SECRET   = credentials('azure_client_secret')
        AZURE_TENANT_ID       = credentials('azure_tenant_id')
        AZURE_SUBSCRIPTION_ID = credentials('azure_subscription_id')
    }

  stages {
    stage('Login to Azure') { 
      steps { 
        sh ''' 
        az login --service-principal \
        -u $AZURE_CLIENT_ID \ 
        -p $AZURE_CLIENT_SECRET \ 
        --tenant $AZURE_TENANT_ID 
        ''' 
      }
    }
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
