CC=g++
CFLAGS=-c -Wall
LDFLAGS=`pkg-config --cflags --libs opencv`
SOURCES=motec.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=motec

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS)
	$(CC) -o $@ $(OBJECTS) $(LDFLAGS)

.cpp.o:
	$(CC) -o $@ $(CFLAGS) $<
