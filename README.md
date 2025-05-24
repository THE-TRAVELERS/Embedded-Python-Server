# Embed-Control

> The embedded Raspberry Pi will be responsible for the communication between the ESP and the control panel (Flutter project). It gathers and transmit user inputs to the ESP and send sensors data to the control panel (user).
>
> It is an API with two main features: get the status of the websockets (open/close) and access the websockets to receive/send data.

## Installation

### Using Docker

Docker is a tool designed to make it easier to create, deploy, and run applications by using containers. Containers allow a developer to package up an application with all parts it needs, such as libraries and other dependencies, and ship it all out as one package.

On the Raspberry Pi, the installation is a little bit different from the common OS. The official documentation is **[here](https://docs.docker.com/engine/install/debian/)**.

First, clone the repository:

```bash
git clone https://github.com/THE-TRAVELERS/Embedded-Python-Server.git
```

Move to the directory:

```bash
cd Embedded-Python-Server
```

Install the dependencies and build the Docker image using:

```bash
sudo apt installe make
make install
```

And then, run the service:

```bash
make start
```

The service will be up and running. To check the logs, we may use the tool `lazydocker`:

```bash
lazydocker
```

The othe commands available in the Makefile are:

- `make stop`: Stop the service.
- `make restart`: Restart the service.
- `make logs`: Show the logs of the service.
- `make clean`: Remove the Docker container and image.
- `make bash`: Open a shell inside the Docker container.
- `make update`: Update the service to the latest version.

#### Manually

First clone the repository and navigate to `Embedded-Python-Server/src` directory:

Then, let's set up a virtual environment:

```bash
python3 -m venv travenv
source travenv/bin/activate
```

Then, install the requirements:

```bash
pip install -r requirements.txt
```

Now, we can run the FastAPI server for a debug environment:

```bash
fastapi dev /app/main.py --port 8000
```

Or for a production environment:

```bash
fastapi run /app/main.py --port 8000
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
