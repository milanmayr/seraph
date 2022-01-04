# Seraph
*Incident Angel*  
Seraph is a tool that helps Site Reliability Engineers automate their incident response.

## Development Setup

### Setup and run Docker development container

> Run all of these commands from the root directory of the project

1. Build the Docker container  
`docker build -f development/Dockerfile --tag seraph-dev .`

2.  Run the development Docker container  
`docker run -itd --name seraph-dev --mount src="$(pwd)",target=/go/src/github.com/milanmayr/seraph/,type=bind seraph-dev /bin/sh`

3.  Exec into the Docker container  
`docker exec -it -u 0 seraph-dev /bin/zsh`