pipeline{
    agent any
    tools {
        jdk 'jdk17'
        maven 'maven3'
    }
    environment {
        SCANNER_HOME=tool 'sonar-scanner'
    }
    stages{
        stage ('clean Workspace'){
            steps{
                cleanWs()
            }
        }
        stage ('checkout scm') {
            steps {
                git 'https://github.com/Harshit-cyber-bit/jpetstore-6'
            }
        }
        stage ('maven compile') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage ('maven Test') {
            steps {
                sh 'mvn test'
            }
        }
        stage("Sonarqube Analysis "){
            steps{
                withSonarQubeEnv('sonar-server') {
                    sh ''' $SCANNER_HOME/bin/sonar-scanner -Dsonar.projectName=Petshop \
                    -Dsonar.java.binaries=. \
                    -Dsonar.projectKey=Petshop '''
                }
            }
        }
        stage("quality gate"){
            steps {
                script {
                  waitForQualityGate abortPipeline: false, credentialsId: 'Sonar-token'
                }
           }
        }
        stage ('Build war file'){
            steps{
                sh 'mvn clean install -DskipTests=true'
            }
        }
        stage("OWASP Dependency Check"){
            steps{
                dependencyCheck additionalArguments: '--scan ./ --format XML ', odcInstallation: 'DP-Check'
                dependencyCheckPublisher pattern: '**/dependency-check-report.xml'
            }
        }
        stage("Docker Image Build") {
            steps {
                script {
                        withDockerRegistry(credentialsId: 'docker', toolName: 'docker') {   
                            sh 'docker system prune -f'
                            sh 'docker container prune -f'
                            sh 'docker build -t petstore .'
                        }
                }
            }
        }
        stage('Build and Push Docker Image') {
            steps {
                script {
                    // Generate a unique tag using the Jenkins BUILD_NUMBER variable
                    def dockerTag = "ahmedovelshan/petstore:${BUILD_NUMBER}"

                    // Tag and push the Docker image
                    withDockerRegistry(credentialsId: 'docker', toolName: 'docker') {
                        sh "docker tag petstore ${dockerTag}"
                        sh "docker push ${dockerTag}"
                    }
                }
            }
        }
   }
}
