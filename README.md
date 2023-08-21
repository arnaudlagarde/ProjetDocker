# Docker Project: Containerized Infrastructure

This project demonstrates the setup of a containerized infrastructure using Docker. The infrastructure includes a load balancer, web services, and a database, all orchestrated using Docker Compose.

## Table of Contents

- [Project Overview](#project-overview)
- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Project Structure](#project-structure)
- [Usage](#usage)
- [Maintenance](#maintenance)
- [Contributing](#contributing)
- [License](#license)

## Technical Documentation

Refer to the [technical documentation](Documentation.md) for detailed information on configuring the Docker project.


## Project Overview

This project sets up a Docker-based infrastructure with the following components:

- **Load Balancer:** Utilizes HaProxy to distribute incoming traffic between two web services.
- **Web Services (web1 and web2):** Hosts application content and serves it over HTTP.
- **Database (db):** MySQL database service for data storage.

## Prerequisites

Before you begin, ensure you have the following:

- Docker installed on your system.
- A code editor for making modifications.

## Getting Started

1. Clone this repository to your local machine.
2. Navigate to the project directory.

## Project Structure

The project directory structure is organized as follows:

- `web1/`: Dockerfile and application files for the first web service.
- `web2/`: Dockerfile and application files for the second web service.
- `haproxy.cfg`: HaProxy configuration file.
- `docker-compose.yml`: Docker Compose configuration file.
- `certs/`: Directory for SSL/TLS certificates (not included in the repository).

## Usage

1. Update the `Dockerfile` in the `web1/` and `web2/` directories with your application's requirements.
2. Configure your SSL/TLS certificate and place it in the `certs/` directory.
3. Modify the `docker-compose.yml` file to match your environment and requirements.
4. Open a terminal and navigate to the project directory.
5. Run the following command to start the services:

```bash 
docker-compose up
```

6. Access the services through the appropriate URLs.

## Maintenance

- To update the infrastructure after changes in the Dockerfiles or configuration, use:

```bash
docker-compose down
docker-compose build
docker-compose up -d
```


## Contributing

Contributions are welcome! If you find issues or have suggestions, feel free to open an issue or submit a pull request.

## License

This project is licensed under the [MIT License](LICENSE).
