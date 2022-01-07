docker rm -f JenkinsTest || true
sudo chmod 666 /var/run/docker.sock
cd ~/auto
cp ~/secret/key.pem .
docker build . -t registry646.azurecr.io/jenkins:latest
docker run -d -p 8282:8080 --name JenkinsTest \
	-v /var/run/docker.sock:/var/run/docker.sock \
	--env JENKINS_ADMIN_ID="${JENKINS_ADMIN_ID}" \
	--env JENKINS_ADMIN_PASSWORD="${JENKINS_ADMIN_PASSWORD}" \
	--env JENKINS_RESERVE_URL="${JENKINS_RESERVE_URL}" \
	--env ACR_ADDR="${ACR_ADDR}" \
	--env ACR_PASS="${ACR_PASS}" \
	--env ACR_UID="${ACR_UID}" \
	--env DATASOURCE_PASSWORD="${DATASOURCE_PASSWORD}" \
	--env DATASOURCE_URL="${DATASOURCE_URL}" \
	--env DATASOURCE_USER="${DATASOURCE_USER}" \
	--env JWT_SECRET="${JWT_SECRET}" \
	--env MY_PASSWORD="${MY_PASSWORD}" \
	--env SUBSCRIPTION_ID="${SUBSCRIPTION_ID}" \
	--env VMIP="${VMIP}" \
	--env SSH_PRIVATE_FILE_PATH="${SSH_PRIVATE_FILE_PATH}" \
	--env CHAT_ID="${CHAT_ID}" \
	--env TELEGRAM_TOKEN="${TELEGRAM_TOKEN}" \
	--env SONAR_TOKEN="${SONAR_TOKEN}" \
	--env SONAR_SERVER="${SONAR_SERVER}" \
	--env NEXUS_SERVER="${NEXUS_SERVER}" \
	--env NEXUS_USER="${NEXUS_USER}" \
	--env NEXUS_PASSWORD="${NEXUS_PASSWORD}" \
	registry646.azurecr.io/jenkins:latest
