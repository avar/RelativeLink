# A simple Makefile to automate building the RelativeLink program
APPNAME = StartTorBrowserBundle
OBJECTS = RelativeLink-res.rc.o RelativeLink.o
CFLAGS = -Wall -mwindows

all: RelativeLink

RelativeLink: $(OBJECTS) 
	$(CC) $(OBJECTS) $(CFLAGS) -o $(APPNAME)

RelativeLink.o: RelativeLink.c

RelativeLink-res.rc.o: RelativeLink-res.rc

clean:
	rm -rf *.exe
	rm -rf *.o

.rc.o:
		windres.exe $^ -o $@

%.o : %.rc
		windres.exe $^ -o $@
