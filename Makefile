AutomatedMakefile = am
CC = g++

FILES = HybridDriver.o
EXECUTABLE = Lab10

PROJECT_PATH = $(PROJECT_DIR)

INC_DIRS = -I$(PROJECT_PATH)/CSC2110/ 
LIB_DIRS = -L$(PROJECT_PATH)/CSC2110/ 
LIBS = -lCSC2110 

COMPILE = $(CC) $(INC_DIRS) -c -g
LINK = $(CC) $(LIB_DIRS) -g -o

all: Project

Project: 		$(FILES)
			$(LINK) $(EXECUTABLE) $(FILES) $(LIBS)

HybridDriver.o:		Hybrid.h HybridDriver.cpp SortedListDoublyLinked.h
					$(COMPILE) HybridDriver.cpp




