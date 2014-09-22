CC=g++
FLAGS=`pkg-config --cflags --libs opencv`
SOURCES=motec.cpp
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=motec

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE):  
	$(CC) $(SOURCES) -o $@ $(FLAGS)
