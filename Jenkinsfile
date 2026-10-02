pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t jenkins-cicd-app:${BUILD_NUMBER} .'
            }
        }

        stage('Test') {
            steps {
                echo 'Testing Docker image...'
                sh '''
                    docker run --rm jenkins-cicd-app:${BUILD_NUMBER} \
                    sh -c "test -s /usr/share/nginx/html/index.html && grep -q 'Welcome to Jenkins CI/CD!' /usr/share/nginx/html/index.html"
                '''
            }
        }
    }
}
