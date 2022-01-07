# A simple IaC project for MS Azure.
1. Takes the secret file from local machine.
2. Builds an image with default admin user, preinstalled plugins and predefined jobs.
3. Pastes in environment variables and runs it.
4. Once container is running, it will deploy the infrasctructure consisting of K8S cluster with an app (in this case it's some old version of TeachUA) and an ingress.
5. Other jobs will be also available:
   - monitoring
   - image building

To run it execute the bash script (jstart.sh).

For it to run properly you'll first need to set up the environment variables and have an SSH key on your machine.
Environment variables:
  <pre>- JENKINS_ADMIN_ID                Your default Jenkins user</pre>
  <pre>- JENKINS_ADMIN_PASSWORD          Default password</pre>
  <pre>- JENKINS_RESERVE_URL             Jenkins server URL</pre>
  <pre>- ACR_ADDR                        Azure container registry address</pre>
  <pre>- ACR_PASS                        Password to access the ACR</pre>
  <pre>- ACR_UID                         ACR user</pre>
  <pre>- DATASOURCE_PASSWORD             Password to access database</pre>
  <pre>- DATASOURCE_URL                  Database URL</pre>
  <pre>- DATASOURCE_USER                 Database user</pre>
  <pre>- JWT_SECRET                      Needed for app authorization (any string will do)</pre>
  <pre>- MY_PASSWORD                     Any string</pre>
  <pre>- SUBSCRIPTION_ID                 Your Azure subscription ID</pre>
  <pre>- VMIP                            Azure VM ip-address</pre>
  <pre>- SSH_PRIVATE_FILE_PATH           Path to ssh key on docker container (NOT VM)</pre>
  <pre>- SONAR_SERVER                    SonarQube Server ip address</pre>
  <pre>- SONAR_TOKEN                     Token to access your SonarQube Server</pre>
  <pre>- TELEGRAM_TOKEN                  Token for telegram notification bot</pre>
  <pre>- CHAT_ID                         Telegram notification channel id</pre>
  <pre>- NEXUS_SERVER                    Nexus ip-address</pre>
  <pre>- NEXUS_USER                      Nexus user</pre>
  <pre>- NEXUS_PASSWORD                  Password to access Nexus</pre>
