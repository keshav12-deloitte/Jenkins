pipeline {
    agent any

    stages {
        stage('delete if exist and clone') {
            steps {
                bat "cd C://Users//vuchander"
                bat "del Jenkins   Y"
                bat "git clone https://github.com/keshav12-deloitte/Jenkins.git"
            }
        }

         stage('perform testing') {
            steps {
                bat "cd C://Users//vuchander//Jenkins//Tests"
                bat "robot -d results tests//SingleTestAndroid.robot"
            }
        }
    }
}