node {
    def workspace = pwd()
    def packagaName = "${JOB_NAME}-${BUILD_NUMBER}.tar.gz"
    def mvnHome = tool name: 'Maven', type: 'maven'
    
    stage ('SCM__Checkout'){
    git 'https://github.com/manneyvictor/spring-petclinic.git'
    }
    
    //stage ('Compile, Test and Package'){
    //    sh "${mvnHome}/bin/mvn clean package "
    //    }
    
    stage ('Sonar Analyzis'){
        sh "${mvnHome}/bin/mvn sonar:sonar -Dsonar.host.url=http://sonar:9000 "//-Dsonar.login=af97b2e229ab1e675c78051c1bdb24bb7580e98b"
        }
        
    stage ('Build in docker image'){
        sh "docker build . -t petclinic:${JOB_NAME}-${BUILD_NUMBER}"
        
        }

//  stage('Check image'){
//      sh "ls petclinic:${JOB_NAME}-${BUILD_NUMBER}"
//     }
     
     
//  stage ('Push to Nexus'){
//      sh "curl -v --user admin:admin123 --upload-file ${packageName} https://172.17.0.1:8443/repository/docker6/${packageName} "
//  }
      

    
}
