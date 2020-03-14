pipeline {
agent any
    stages {
		stage ('stop'){
			steps {
				sh 'sudo docker stop ohad1310/nginx'
			}
		}
		stage ('remove'){
			steps {
				sh 'sudo docker rm ohad1310/nginx'
			}
		}
        stage('build') {
            steps {
                sh 'sudo docker build -t ohad1310/nginx:1.0 .'
            }
        }
        stage('run') {
            steps {
                sh 'sudo docker run -d -p 80:80 ohad1310/nginx'
            }
        }
    }
}