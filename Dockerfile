FROM alpine:3.3
MAINTAINER Chris Kankiewicz <Chris@ChrisKankiewicz.com>

# Define PlexPy version
ENV PLEXPY_VERSION 1.4.1

# Create PlexPy directories
RUN mkdir -pv /opt/plexpy /etc/plexpy

# Install dependencies
RUN apk add --update python && rm -rf /var/cache/apk/*

# Set PlexPy archive URL
ENV TARBALL_URL https://api.github.com/repos/drzoidberg33/plexpy/tarball/v${PLEXPY_VERSION}

# Download and extract PlexPy archive
RUN apk add --update ca-certificates tar wget \
    && wget -qO- ${TARBALL_URL} | tar -xzv --strip-components=1 -C /opt/plexpy \
    && apk del tar wget && rm -rf /var/cache/apk/*

# Define volumes
VOLUME /etc/plexpy

# Expose ports
EXPOSE 8181

# Default command
CMD ["/opt/plexpy/PlexPy.py", "--nolaunch", "--verbose", "--datadir", "/etc/plexpy"]
