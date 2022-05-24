FROM jenkins/jenkins:latest

# install jenkins plugins
COPY jenkins-plugins /usr/share/jenkins/ref/jenkins-plugins
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/jenkins-plugins
ENV JENKINS_USER admin
ENV JENKINS_PASS admin

# allows to skip Jenkins setup wizard
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false

# Jenkins runs all grovy files from init.groovy.d dir
# use this for creating default admin user
COPY default.user.groovy /var/lib/jenkins/init.groovy.d/

# volume for Jenkins settings
VOLUME /var/jenkins_home




