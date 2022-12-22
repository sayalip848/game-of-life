pipeline {
    agent {
        label {
            label 'test'
            customWorkspace '/mnt/project'
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
