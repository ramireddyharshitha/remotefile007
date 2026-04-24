pipeline {
    agent any

    tools {
        maven 'Maven3'   // Make sure Maven is configured in Jenkins
        jdk 'JDK17'      // Configure JDK in Jenkins
    }

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main', url: 'https://github.com/ramireddyharshitha/remotefile007'
            }
        }

        stage('Build') {
            steps {
                sh 'mvn clean compile'
            }
        }

        stage('Test') {
            steps {
                sh 'mvn test'
            }
        }

        stage('Package') {
            steps {
                sh 'mvn package'
            }
        }
        stage('Run App (Tomcat)') {
            steps {
                sh '''
                docker rm -f myapp || true
                docker run -d -p 8081:8080 \
                  -v $(pwd)/target:/usr/local/tomcat/webapps \
                  --name myapp tomcat:9
               '''
           }
       }
       stage('Archive Artifacts') {
           steps {
               archiveArtifacts artifacts: 'target/*.war', fingerprint: true
           }
       }
    }

    post {
        success {
            echo 'Build Successful ✅'
        }
        failure {
            echo 'Build Failed ❌'
        }
    }
}
