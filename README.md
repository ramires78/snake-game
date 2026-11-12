# Snake Game

A simple browser-based Snake game built with HTML, CSS, and JavaScript.

## Technologies

- HTML, CSS, JavaScript
- Docker & Nginx
- Jenkins
- GitHub
- Docker Hub

## CI/CD Workflow

1. **Build** — Jenkins gets the source code from GitHub, builds a Docker image, and pushes it to Docker Hub.
2. **Deploy** — Jenkins pulls the image from Docker Hub and runs the container on a separate server.

Both Jenkins jobs are started manually and support a `VERSION` parameter.

## Run Locally

```bash
docker build -t snake:1 .
docker run -d --name snake -p 8081:80 snake:1
```

Open http://localhost:8081 in your browser.

## Purpose

A simple educational DevOps project demonstrating Docker containerization and Jenkins-based build and deployment workflows.
