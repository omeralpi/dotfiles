if [ -d /opt/homebrew ]; then
    eval $(/opt/homebrew/bin/brew shellenv)
fi

# Build Mac M1 docker images by default
export DOCKER_DEFAULT_PLATFORM=linux/amd64