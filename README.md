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

4.  If you want to use SSH for git, copy your local ssh keys into the container  
`docker cp ~/.ssh/ seraph-dev:/root/`

5.  Shell into the Docker container  
`docker exec -it -u 0 seraph-dev /bin/zsh`