pipeline {
	agent {
	label {
		label 'test'
		customWorkspace '/mnt/docker2'
	}
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
	stage ('image-container') {
		steps {
			sh "docker build -t tomcat:1.0"
			sh "docker run -itdp 8888:8080 --name tomcat tomcat:1.0"
		}
	}
	
	}
}
