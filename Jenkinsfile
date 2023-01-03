pipeline {
	agent any
tools {
	maven 'mvn-install'
	git 'git'
}
stages {
	stage ('DEV-env') {
		agent {
			label {
			label 'DEV'
		}
	}
		steps {
			sh "git clone https://github.com/sayalip848/game-of-life.git"
			sh "git clone https://github.com/sayalip848/my-docker-compose.git"
			sh "mvn clean install"
			sh "sudo docker-compose up -d"
		}
	}
	stage ('QA-env') {
		agent {
			label {
			label 'QA'
		}
		}
		steps {
			sh "git clone https://github.com/sayalip848/game-of-life.git"
			sh "git clone https://github.com/sayalip848/my-docker-compose.git"
			sh "mvn clean install"
			sh "sudo docker-compose up -d"
			}
		}
	}
}
	
