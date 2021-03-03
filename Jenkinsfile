pipeline {
	agent any
  	environment{
    		PATH="/var/jenkins_home/apache-maven-3.5.4/bin:$PATH"
  	}
	stages{
		stage("git"){
      			steps{
				echo("Cloning Git hub jenkins file")
				git credentialsId: 'Github', url: 'https://github.com/squad12-devops/DevOps-Demo-WebApp.git'
        		}
		}
stage('Build') {
   steps {
       echo 'Building...'
   }
   post {
       always {
           jiraSendBuildInfo site: '12squaddevops.atlassian.net', branch: 'CS-7'
       }
   }
}

	}
}
