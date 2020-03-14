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
				sh 'sudo docker build -t ohad1310/nginx:1.2 .'
            }
        }
        stage('run') {
            steps {
				script {
					IMAGE_ID = 'sudo docker images --filter=reference=ohad1310/nginx:1.2 --format "{{.ID}}"'
					'sudo docker run -d -p 80:80 --name nginx $IMAGE_ID'
				}
            }
        }
    }
}