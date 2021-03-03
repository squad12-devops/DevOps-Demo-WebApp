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
	   echo 'Still Building...'
   }
   post {
       always {
	       jiraSendBuildInfo branch: 'CS-7', site: '12squaddevops.atlassian.net'
	       jiraComment body: 'Hey there, I am Jenkins and I am talking to JIRA now.', issueKey: 'CS-8'
       }
   }
post {
    success {
      mail to: brewdevops@gamial.com, subject: ‘The Pipeline failed :(‘
    }
  }

}

	}
}
