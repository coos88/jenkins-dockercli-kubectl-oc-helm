pipeline {
  agent any
  stages {
    stage("Docker build & push") {
      steps {
          sh "docker build -t coos88/jenkins-dockercli-kubectl-oc-helm ."
          withDockerRegistry(credentialsId: 'dockerhub', url: 'https://registry.hub.docker.com/') {
            sh "docker push coos88/jenkins-dockercli-kubectl-oc-helm"
          }
        }
      }
    }
  }
}
