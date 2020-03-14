pipeline {
agent any
    stages {
		stage ('stop'){
			steps {
				sh 'sudo docker stop nginx'
			}
		}
		stage ('remove'){
			steps {
				sh 'sudo docker rm nginx'
			}
		}
        stage('build') {
            steps {
				sh 'sudo docker build -t ohad1310/nginx:1.1 .'
            }
        }
        stage('run') {
            steps {
				IMAGE_ID=$(sh 'sudo docker images --filter=reference=ohad1310/nginx --format "{{.ID}}"')
                sh 'sudo docker run -d -p 80:80 --name nginx $IMAGE_ID'
            }
        }
    }
}