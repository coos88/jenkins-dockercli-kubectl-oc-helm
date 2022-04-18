pipeline {
  agent any
  stages {
    stage("Docker build & push") {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url: 'https://registry.hub.docker.com/') {
          sh "docker build -t jenkins-dockercli-kubectl-oc-helm:latest ."
          sh "docker push jenkins-dockercli-kubectl-oc-helm:latest"
        }
      }
    }
  }
}
