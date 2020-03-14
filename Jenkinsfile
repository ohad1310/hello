pipeline {
agent any
    stages {
		stage ('stop'){
			steps {
				sh 'docker stop ohad1310/nginx'
			}
		}
		stage ('remove'){
			steps {
				sh 'docker rm ohad1310/nginx'
			}
		}
        stage('build') {
            steps {
                sh 'docker build -t ohad1310/nginx:1.0 .'
            }
        }
        stage('run') {
            steps {
                sh 'docker run -d -p 80:80 ohad1310/nginx'
            }
        }
    }
}