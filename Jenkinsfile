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
				script {
                    def customImage = docker.build("ohad1310/nginx:1.1:${env.BUILD_ID}")
                    customImage.push()
				}
            }
        }
        stage('run') {
            steps {
                sh 'sudo docker run -d -p 80:80 --name nginx {env.BUILD_ID}'
            }
        }
    }
}