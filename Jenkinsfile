pipeline {
	agent {
		label 'test'
	}
tools {
	maven 'mvn-install'
	git 'git'
}
stages {
	stage ('git') {
		steps {
			git url: 'https://github.com/sayalip848/game-of-life.git'
		}
	}
	stage ('build') {
		steps {
			sh "mvn clean install"
		}
	}
	stage ('install-docker') {
		steps {
			sh "sudo yum install docker -y"
			sh "sudo systemctl start docker"
		}
	}
	stage ('image-container') {
		steps {
			sh "sudo docker build -t tomcat:1.0 ."
			sh "sudo docker run -itdp 8888:8080 --name tomcat tomcat:1.0"
		}
	}
	
	}
}
