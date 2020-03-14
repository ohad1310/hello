pipeline {
agent any
    stages {
		stage ('stop container'){
			steps {
				sh 'sudo docker stop nginx'
			}
		}
		stage ('remove container'){
			steps {
				sh 'sudo docker rm nginx'
			}
		}
        stage('build new container') {
            steps {
				sh 'sudo docker build -t ohad1310/nginx:1.2 .'
            }
        }
		stage ('run new container') {
			steps {
				script{
					IMAGE_ID=$(sudo docker images --filter=reference=ohad1310/nginx:1.2 --format "{{.ID}}"')
					sudo docker run -d -p 80:80 --name nginx $IMAGE_ID'
				}
			}
		}
    }
}