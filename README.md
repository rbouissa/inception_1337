# 🏰 Inception

> A 42 school DevOps project to build a secure, containerized web infrastructure using Docker.

## 📌 Overview

**Inception** is a system administration and DevOps project focused on deploying a multi-service web infrastructure using Docker containers. Each service is containerized from scratch using your own Dockerfiles, and everything is orchestrated with Docker Compose.

You'll deploy a WordPress website served by Nginx, backed by a MariaDB database, and secured with SSL certificates. All services must run in isolated containers with persistent storage and communicate over a custom Docker network.

---

## 🛠️ Services and Technologies

| Service     | Description                          | Dockerized |
|-------------|--------------------------------------|------------|
| **Nginx**   | Web server with SSL configuration    | ✅         |
| **WordPress**| CMS served by Nginx                 | ✅         |
| **MariaDB** | Database to store WordPress data     | ✅         |
| **Redis** *(optional)* | Object cache for WordPress| ✅         |
| **Adminer / phpMyAdmin** *(optional)* | DB manager| ✅         |
| **FTP (vsftpd)** | File transfer access to WordPress files | ✅  |

---

## 📁 Project Structure

inception/
├── srcs/
│   ├── requirements/
│   │   ├── nginx/         # Nginx Dockerfile and config
│   │   ├── wordpress/     # WordPress Dockerfile and setup
│   │   ├── mariadb/       # MariaDB Dockerfile and initialization
│   │   └── ...            # Other optional services (e.g., Redis, FTP)
│   ├── .env               # Environment variables for services
│   └── docker-compose.yml # Orchestration file
├── README.md              # Project documentation


---

## 🚀 Installation & Usage

### 1. Clone the Repository

```bash
git clone https://github.com/yourusername/inception.git
cd inception/srcs

2. Configure Environment Variables
Edit the .env file with your credentials and domain.

DOMAIN_NAME=mydomain.com
DB_NAME=wordpress
DB_USER=reda_user
DB_PASSWORD=123
...
3. Start the Infrastructure
docker-compose up --build

4. Access Your Services
WordPress: https://yourdomain.com

phpMyAdmin: https://yourdomain.com/phpmyadmin (if added)

FTP: Use your FTP client to connect to port 21

🧱 Features
SSL certificates with OpenSSL

Custom Dockerfiles for each service

Docker Compose orchestration

Volumes for data persistence

Non-root user for security

Network isolation


✅ Requirements Met
✅ All services are built from Dockerfiles (no pre-built images)

✅ Each container runs in its own isolated environment

✅ WordPress connects securely to the database

✅ Volumes are used for persistence

✅ SSL certificates are self-signed using OpenSSL

✅ Services restart automatically on failure


🔐 Security Considerations
No root user usage inside containers

Strong passwords stored in .env (should not be committed)

Firewall and port restrictions can be added on production deployment

🧠 Author
👤 Reda Bouissali
42 School - Inception Project
Feel free to reach out or fork the repo for improvement!


