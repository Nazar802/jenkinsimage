FROM jenkins/jenkins:lts

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG /var/jenkins_home/casc.yaml

COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/plugins.txt
COPY casc.yaml /var/jenkins_home/casc.yaml
COPY --chown=jenkins:jenkins key.pem /var/jenkins_home/key.pem

ADD --chown=jenkins:jenkins jobs /var/jenkins_home/jobs

VOLUME /var/jenkins_home
 
