.PHONY: install run stop clean

install:
	@echo "Installing dependencies..."
	curl -fsSL https://get.docker.com | sh

	curl https://raw.githubusercontent.com/jesseduffield/lazydocker/master/scripts/install_update_linux.sh | bash


	@echo "Building the image..."
	docker compose build

update:
	@echo "Updating the repository..."
	git pull
	@echo "Updating the image..."
	docker compose pull
	@echo "Rebuilding the image..."
	docker compose build
	@echo "Restarting the container..."
	docker compose up -d --force-recreate

start:
	@echo "Running the image..."
	docker compose up -d

restart:
	@echo "Restarting the container..."
	docker compose restart

stop:
	@echo "Stopping the image..."
	docker compose down

clean:
	@echo "Cleaning up..."
	docker compose down --volumes --remove-orphans

logs:
	@echo "Showing logs..."
	docker compose logs -f

bash:
	@echo "Opening a bash shell in the container..."
	docker compose exec app bash