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
			sh "git clone https://github.com/sayalip848/game-of-life.git"
			sh "git clone https://github.com/sayalip848/my-docker-compose.git"
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
			sh "sudo curl -SL https://github.com/docker/compose/releases/download/v2.11.0/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose"
			sh "sudo chmod +x /usr/local/bin/docker-compose"
			sh "sudo ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose"
			sh "sudo chmod +x /usr/bin/docker-compose"
		}
	}
	stage ('image-container') {
		steps {
			sh "sudo docker-compose up -d"
			
		}
	}
	
	}
}
