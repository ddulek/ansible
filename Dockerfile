FROM registry.redhat.io/openshift4/ose-jenkins-agent-maven
USER 0
ENV HOME /root
RUN easy_install pip && pip install wheel && pip install ansible && pip install Pyvmomi && useradd jenkins -u 1001
USER 1001
ENV HOME /home/jenkins
