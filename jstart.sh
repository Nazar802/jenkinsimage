cp ~/secret/key.pem .
docker build . -t registry646.azurecr.io/jenkins:latest
docker run -d -p 8282:8080 --name JenkinsTest \
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
	registry646.azurecr.io/jenkins:latest
