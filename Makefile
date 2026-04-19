make:
	./compile.sh;
	printf "\033[36mThe executable should be in build/\033[0m\n\033[36mRun \$$make install to install, or \$$make strip to first strip the binary\033[0m\n";

install:
	(cp build/where /usr/local/bin/ 2>/dev/null && printf "\033[32mInstalled system wide in /usr/local/bin/\n") || (mkdir -p ~/.local/bin/; cp build/where ~/.local/bin/ && printf "\033[32mInstalled user wide in ~/.local/bin/\n") || printf "\033[31mFailure"; printf "\033[0m"

strip:
	strip build/where && printf "\033[32mStripped the binary\033[0m\n" || printf "\033[31mFailure\033[0m\n"
