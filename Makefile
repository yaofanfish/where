make:
	./compile.sh;
	echo The executable should be in build/;

install:
	(cp build/where /usr/local/bin/ 2>/dev/null && echo Installed system wide in /usr/local/bin/) || (mkdir -p ~/.local/bin/; cp build/where ~/.local/bin/ && echo Installed user wide in ~/.local/bin/);
