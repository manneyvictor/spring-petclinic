node {
    
    stage ('SCM__Checkout'){
    git 'https://github.com/manneyvictor/spring-petclinic.git'
    }
    
    //stage ('Package'){
        //def mvnHome = tool name: 'Maven', type: 'maven'
      //  sh "${mvnHome}/bin/mvn package"
    //}
    
    stage ('Sonar Analyzis'){
        //def sonarHome = tool name: 'SonarQube', type: 'hudson.plugins.sonar.SonarRunnerInstallation'
        //withSonarQubeEnv('SonarQube'){
            //sh "${sonarHome/bin/sonar-scanner}"
            def mvnHome = tool name: 'Maven', type: 'maven'
            sh "${mvnHome}/bin/mvn sonar:sonar -Dsonar.host.url=http://172.17.0.1:9000 -Dsonar.login=af97b2e229ab1e675c78051c1bdb24bb7580e98b"
        }
    }
