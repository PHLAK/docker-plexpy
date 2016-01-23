docker-plexpy
=============

Docker image for PlexPy monitoring server.

[![](https://badge.imagelayers.io/phlak/plexpy:latest.svg)](https://imagelayers.io/?images=phlak/plexpy:latest 'Get your own badge on imagelayers.io')


### Running the container


In order to persist configuration data when upgrading your running server container you should
create a data-only container. This is not required but is _highly_ recommended.

    docker create --name plexpy-data phlak/plexpy echo "Data-only container for PlexPy server"

After the data-only container has been created run your server container with shared volumes from
the data-only container:

    docker run -d -p 8181:8181  --volumes-from plexpy-data --name plexpy-server phlak/plexpy


##### Optional 'docker run' Arguments

`--restart always` - Always restart the container regardless of the exit status. See the Docker
                     [restart policies](https://goo.gl/OI87rA) for additional details.


-----

**Copyright (c) 2016 Chris Kankewicz <Chris@ChrisKankiewicz.com>**

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
