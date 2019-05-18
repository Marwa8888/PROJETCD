

pipeline {
    agent {
        label 'slave1'
    }
    tools{
        maven 'maven3'}
    environment {
        MONGODB_ADMIN_USER='marwa'
        MONGODB_ADMIN_PWD='marwa'
        MONGODB_URL='URL'
        MONGODB_PORT='30000'
    }
    stages{
        stage('checkout') {
            steps {
                git branch: 'feature/marwa', credentialsId: 'd5a15dd5-35d4-43ed-8f47-453a739856c6', url: 'https://github.com/Marwa8888/PROJETCD.git'
            }
        }
        stage('test'){
         parallel{
            stage('junit'){
             tools{
               maven "maven3"
              }
                  steps{
                        sh"mvn test"
            }
      }
            stage('pmd'){
              steps{
               sh "mvn pmd:pmd"
            }
           }
             
         }
            
        }
        //stage ('SNAPSHOT') {
         //  steps {
         //       sh 'mvn deploy -s settings.xml'
         //   }
       // }
        stage('RELEASE'){
            steps{
                sh 'mvn deploy  -s settings.xml'
                }
        }
        
}
}
