
## Usage

This image uses a volume at /srv/devpi-server to store all of devpi-server's data, so the recommended approach is first to create a data-only container:

    docker create --name devpi-data adblair/devpi-server true

Then start the actual server, using the volume from the data container.

    docker run -d --name devpi-server --volumes-from devpi-data -p 3141:3141 --restart always adblair/devpi-server

You would then be able to connect to the server via port 3141 on the host machine.

This image doesn't perform any additional setup; you should use the devpi-client Python package to create indexes and users etc.
