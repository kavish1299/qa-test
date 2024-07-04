# qa-test


Prerequisites
Minikube: Ensure Minikube is installed and running.
Docker: Make sure Docker is installed and configured.
kubectl: Install kubectl command-line tool.
Deployment Steps
Start Minikube:

Deploy Application:
Run the deployment script 
sh deploy.sh ---> to deploy the application:

sh deploy.sh
This script sets up Kubernetes resources for your application.

Testing Steps
Run Tests:
Execute the test script test.sh to run integration tests:

sh test.sh
Ensure that the application is deployed and accessible before running tests.


**Kubernetes Deployment:**

Deploy the services to a local Kubernetes cluster (e.g., Minikube or Kind).

**Verification:**

- Ensure the frontend service can successfully communicate with the backend service.
- Verify that accessing the frontend URL displays the greeting message fetched from the backend.

**Automated Testing:**

- Write a simple test script (using a tool of your choice) to verify the integration between the frontend and backend services.
- The test should check that the frontend correctly displays the message returned by the backend.

**Documentation:**

- Provide a README file with instructions on how to set up and run the automated tests script.

**Deliverables:**
- Test script for automated testing.
- README file with setup and execution instructions.

**Github repo should be Public**
