# Movie Voting Elite

## Overview
Movie Voting Elite is a web application that allows users to vote on their favorite movies. The application features a user-friendly interface and supports multiple players, making it perfect for group activities.

## Project Structure
- `index.html`: Contains the HTML code for the application, including structure, styles, and scripts.
- `Dockerfile`: Used to build a Docker image for the application using Nginx.
- `README.md`: Documentation for the project.

## Getting Started

### Prerequisites
- Docker installed on your machine.

### Building the Docker Image
To build the Docker image for the Movie Voting Elite application, navigate to the project directory and run the following command:

```
docker build -t movie-voter .
```

### Running the Application
Once the image is built, you can run the application using the following command:

```
docker run -d -p 80:80 movie-voter
```

This command will start the Nginx server and map port 80 of the container to port 80 on your host machine.

### Accessing the Application
Open your web browser and go to `http://localhost` to access the Movie Voting Elite application.

## Contributing
If you would like to contribute to this project, please fork the repository and submit a pull request with your changes.

## License
This project is licensed under the MIT License. See the LICENSE file for more details.