docker-plexpy
=============

Docker image for PlexPy monitoring server.

[![](https://images.microbadger.com/badges/image/phlak/plexpy.svg)](http://microbadger.com/#/images/phlak/plexpy "Get your own image badge on microbadger.com")

Running the Container
---------------------

In order to persist configuration data when upgrading your container you should create a named data
volume. This is not required but is _highly_ recommended.

    docker volume create --name plexpy-data

After the data volume has been created run your server container with the mounted data volume:

    docker run -d -p 8181:8181  -v plexpy-data:/etc/plexpy --name plexpy-server phlak/plexpy

#### Optional 'docker run' Arguments

`--restart always` - Always restart the container regardless of the exit status. See the Docker
                     [restart policies](https://goo.gl/OI87rA) for additional details.

Troubleshooting
---------------

Please report bugs to the [GitHub Issue Tracker](https://github.com/PHLAK/docker-plexpy/issues).

Copyright
---------

This project is liscensed under the [MIT License](https://github.com/PHLAK/docker-plexpy/blob/master/LICENSE).
