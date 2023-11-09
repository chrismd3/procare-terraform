pipeline {
    agent any
    stages {
        stage('test AWS credentials') {
            steps {
                withAWS(region: 'us-east-2', credentials: 'jenkins-procare-aws') {
                    sh 'echo "hello Jenkins">hello.txt'
                    s3Upload acl: 'Private', bucket: 'devops-procare', file: 'hello.txt'
                }
            }
        }
    }
}
