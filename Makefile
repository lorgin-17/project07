build:
	@g++ main.cpp -o main -Wno-ignored-attributes
	@./main

bg:
	@g++ main.cpp -o main -Wno-ignored-attributes
	@./main > /dev/null &
	@echo "демон запущен в фоне"

stop:
	@pkill main
	@echo "демон остановлен"
