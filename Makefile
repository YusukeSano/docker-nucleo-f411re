run:
	docker compose run --rm app cargo build
	openocd -f app/nucleo.cfg -c "program app/target/thumbv7em-none-eabihf/debug/nucleo-f411re verify reset exit"
