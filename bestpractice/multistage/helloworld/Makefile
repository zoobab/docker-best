all: helloworld.c
	$(CC) helloworld.c -o helloworld

install: helloworld
	mkdir -p $(PREFIX)/bin
	install -m 0755 helloworld $(PREFIX)/bin/

clean:
	rm -rf *o helloworld
