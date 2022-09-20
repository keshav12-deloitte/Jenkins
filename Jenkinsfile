pipeline {
    agent any

    stages {

         stage('perform testing') {
            steps {
                bat "cd C://Users//vuchander//Jenkins//Tests"
                bat "robot -d results SingleTestAndroid.robot"
            }
        }
    }
}