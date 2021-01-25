properties([pipelineTriggers([githubPush()])])

pipeline {
    agent { 
      dockerfile true
    }
    
    options {
	withCredentials([[$class: 'AmazonWebServicesCredentialsBinding', accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws-key', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY']])
    }
	
    environment {
	AWS_REGION = 'eu-west-3'
    }
	
    stages {
	    stage('chmod') {
			steps {
				sh 'chmod 600 ./tp_dev_ynov.pem'
			}
		}
		stage('playbook') {
			steps {
				echo 'Go playbook :'
				sh 'ansible-playbook -i inventory install_web.yml --key-file "tp_dev_ynov.pem"'
			}
		}
    }
}
