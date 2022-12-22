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
