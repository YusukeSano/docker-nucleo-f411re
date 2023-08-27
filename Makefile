run:
	docker compose run --rm app cargo build
	openocd -f app/openocd.cfg -c "program app/target/thumbv7em-none-eabihf/debug/nucleo-f411re verify reset exit"

build:
	docker compose run --rm app cargo build

ocd:
	openocd -f app/openocd.cfg

gdb:
	arm-none-eabi-gdb -q -x app/openocd.gdb app/target/thumbv7em-none-eabihf/debug/nucleo-f411re
