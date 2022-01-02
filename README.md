# A simple IaC project for MS Azure.
1. Takes the secret file from local machine.
2. Builds an image with default admin user, preinstalled plugins and predefined jobs
3. Pastes in environment variables and runs it.
4. Once container is running, it will deploy the infrasctructure consisting of K8S cluster with an app (in this case it's some old version of TeachUA) and an ingress.
5. Other jobs will be also available:
   - monitoring
   - image building

To run it execute the bash script (jstart.sh).

For it to run properly you'll first need to set up the environment variables and have an SSH key on your machine.
Environment variables:
  - JENKINS_ADMIN_ID                Your default Jenkins user
  - JENKINS_ADMIN_PASSWORD          Default password
  - JENKINS_RESERVE_URL             Jenkins server URL
  - ACR_ADDR                        Azure container registry address
  - ACR_PASS                        Password to access the ACR
  - ACR_UID                         ACR user
  - DATASOURCE_PASSWORD             Password to access database
  - DATASOURCE_URL                  Database URL
  - DATASOURCE_USER                 Database user
  - JWT_SECRET                      Needed for app authorization (any string will do)
  - MY_PASSWORD                     Any string
  - SUBSCRIPTION_ID                 Your Azure subscription ID
  - VMIP                            Azure VM ip-address
  - SSH_PRIVATE_FILE_PATH           Path to ssh key on docker container (NOT VM)
