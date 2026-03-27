make:
	./compile.sh;
	echo The executable should be in build/;

install:
	cp build/where /usr/local/bin/ || (mkdir -p ~/.local/bin/; cp build/where ~/.local/bin/);
