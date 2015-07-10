
## Usage

Create a data-only container:

    docker create --name=devpi-server-data adblair/devpi-server true

Start the server:

    docker run --name=devpi-server --volumes-from=devpi-server-data --publish=3141:3141 --restart=always --detach adblair/devpi-server

The devpi server will soon be accessible at [http://localhost:3141](http://localhost:3141). Use the [devpi-client Python package](https://pypi.python.org/pypi/devpi-client) to create an index and manage users etc.
