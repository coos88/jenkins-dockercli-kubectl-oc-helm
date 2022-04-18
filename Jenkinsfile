pipeline {
  agent any
  stages {
    stage("Docker build & push") {
      steps {
        withDockerRegistry(credentialsId: 'dockerhub', url: 'https://registry.hub.docker.com/') {
          sh "docker build -t jenkins-dockercli-kubectl-oc-helm:latest ."
          sh "docker tag jenkins-dockercli-kubectl-oc-helm:latest coos88/jenkins-dockercli-kubectl-oc-helm:latest"
          sh "docker push coos88/jenkins-dockercli-kubectl-oc-helm:latest"
        }
      }
    }
  }
}
