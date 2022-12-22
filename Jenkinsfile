pipeline {
    agent {
        label {
            label 'built-in'
            customWorkspace '/mnt/project'
        }
    }
    stages {
        stage ('git') {
            steps {
                git 'https://github.com/sayalip848/game-of-life.git'
            }
        }
        stage ('complie') {
            steps {
               sh "mvn clean install"
            }
        }
        stage ('deploy') {
            steps {
                sh " scp -i ~/sample-kp1.pem gameoflife-web/target/gameoflife.war ec2-user@172.31.32.47:/mnt/install/apache-tomcat-9.0.70/webapps"
            }
        }
    }
}
