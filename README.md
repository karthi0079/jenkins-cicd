# Jenkins CI/CD Pipeline with Docker

## Project Overview

This project demonstrates a simple Continuous Integration and Continuous Deployment (CI/CD) pipeline using **Jenkins and Docker**.

The pipeline automatically builds a Docker image, tests the application, and deploys it inside a Docker container.

## Technologies Used

- **Jenkins** – CI/CD automation
- **Docker** – Containerization
- **GitHub** – Source code management
- **Nginx** – Web server
- **Git** – Version control

## Project Structure

```text
jenkins-cicd/
├── app/
│   └── index.html
├── Dockerfile
├── Dockerfile.jenkins
├── Jenkinsfile
└── README.md
```

## CI/CD Pipeline Stages

### 1. Build

- Builds a Docker image using the application Dockerfile.
- Tags the image using the Jenkins build number.

### 2. Test

- Runs a temporary container from the generated image.
- Checks that the HTML file exists and contains the expected welcome message.

### 3. Deploy

- Removes the previous application container if it exists.
- Starts a new container using the latest built image.
- Exposes the application on port `8083`.

## Jenkins Configuration

- **Jenkins URL:** `http://localhost:8081`
- **Job name:** `jenkins-cicd-pipeline`
- **Pipeline definition:** Pipeline script from SCM
- **SCM:** Git
- **Branch:** `main`
- **Script path:** `Jenkinsfile`

## Running the Application

### Prerequisites

- Docker Desktop
- Jenkins
- Git

### Access the Application

After a successful pipeline execution, open:

`http://localhost:8083`

You should see:

**Welcome to Jenkins CI/CD!**

## Pipeline Workflow

```text
Developer
   |
   v
Push code to GitHub
   |
   v
Jenkins Pipeline
   |
   v
Build Docker Image
   |
   v
Test Docker Image
   |
   v
Deploy Application
   |
   v
Access Application on Port 8083
```

## Repository

GitHub: https://github.com/karthi0079/jenkins-cicd

## Learning Outcomes

- Configured Jenkins using Docker.
- Created a declarative Jenkins pipeline.
- Integrated GitHub with Jenkins.
- Built and tested Docker images through Jenkins.
- Automated application deployment using Docker.

## Author

Karthigai Selvan# Jenkins CI/CD Pipeline with Docker

## Project Overview

This project demonstrates a simple Continuous Integration and Continuous Deployment (CI/CD) pipeline using **Jenkins and Docker**.

The pipeline automatically builds a Docker image, tests the application, and deploys it inside a Docker container.

## Technologies Used

- **Jenkins** – CI/CD automation
- **Docker** – Containerization
- **GitHub** – Source code management
- **Nginx** – Web server
- **Git** – Version control

## Project Structure

```text
jenkins-cicd/
├── app/
│   └── index.html
├── Dockerfile
├── Dockerfile.jenkins
├── Jenkinsfile
└── README.md
```

## CI/CD Pipeline Stages

### 1. Build

- Builds a Docker image using the application Dockerfile.
- Tags the image using the Jenkins build number.

### 2. Test

- Runs a temporary container from the generated image.
- Checks that the HTML file exists and contains the expected welcome message.

### 3. Deploy

- Removes the previous application container if it exists.
- Starts a new container using the latest built image.
- Exposes the application on port `8083`.

## Jenkins Configuration

- **Jenkins URL:** `http://localhost:8081`
- **Job name:** `jenkins-cicd-pipeline`
- **Pipeline definition:** Pipeline script from SCM
- **SCM:** Git
- **Branch:** `main`
- **Script path:** `Jenkinsfile`

## Running the Application

### Prerequisites

- Docker Desktop
- Jenkins
- Git

### Access the Application

After a successful pipeline execution, open:

`http://localhost:8083`

You should see:

**Welcome to Jenkins CI/CD!**

## Pipeline Workflow

```text
Developer
   |
   v
Push code to GitHub
   |
   v
Jenkins Pipeline
   |
   v
Build Docker Image
   |
   v
Test Docker Image
   |
   v
Deploy Application
   |
   v
Access Application on Port 8083
```

## Repository

GitHub: https://github.com/karthi0079/jenkins-cicd

## Learning Outcomes

- Configured Jenkins using Docker.
- Created a declarative Jenkins pipeline.
- Integrated GitHub with Jenkins.
- Built and tested Docker images through Jenkins.
- Automated application deployment using Docker.

## Author

Karthigai Selvan
