FROM coos88/jenkins-dockercli-kubectl-oc:latest
# use root to install cli's
USER root
# install helm
RUN curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash
USER jenkins
ENTRYPOINT ["tini", "--", "/usr/local/bin/jenkins.sh"]
