pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/BhoomikaNB551/aws-devops-live-project.git'
            }
        }

        stage('Build') {
            steps {
                dir('app') {
                    sh '''
                        export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
                        export PATH=$JAVA_HOME/bin:$PATH

                        echo "JAVA_HOME=$JAVA_HOME"
                        java -version
                        /usr/lib/jvm/java-21-openjdk-amd64/bin/javac -version
                        mvn -version

                        mvn clean package -DskipTests
                    '''
                }
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t bhoomika98/devops-demo:1.0 ./app'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push bhoomika98/devops-demo:1.0'
            }
        }
    }
}pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/BhoomikaNB551/aws-devops-live-project.git'
            }
        }

        stage('Build') {
            steps {
                dir('app') {
                    sh '''
                        export JAVA_HOME=/usr/lib/jvm/java-21-openjdk-amd64
                        export PATH=$JAVA_HOME/bin:$PATH

                        echo "JAVA_HOME=$JAVA_HOME"
                        java -version
                        /usr/lib/jvm/java-21-openjdk-amd64/bin/javac -version
                        mvn -version

                        mvn clean package -DskipTests
                    '''
                }
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t bhoomika98/devops-demo:1.0 ./app'
            }
        }

        stage('Docker Push') {
            steps {
                sh 'docker push bhoomika98/devops-demo:1.0'
            }
        }
    }
}
