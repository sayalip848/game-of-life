pipeline {
    agent {
        label {
            label 'test'
            customWorkspace '/mnt/project'
        }
    }		
	tools {
 		 maven 'maven-install'
		 git 'git'
  		}
    stages {
        stage ('git') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: '*/master']], extensions: [], userRemoteConfigs: [[url: 'https://github.com/sayalip848/game-of-life.git']]])
            }
        }
        stage ('complie') {
            steps {
               sh "mvn clean install"
            }
        }
        stage ('deploy') {
            steps {
                sh "cp -r gameoflife-web/target/gameoflife.war /mnt/install/apache-tomcat-9.0.70/webapps"
            }
        }
    }
}
