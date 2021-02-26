CC = gcc
OPT = -Wall -o 
LDFLAGS = -lm

all: additionneur
		
additionneur: additionneur.c
	$(CC) $(OPT) $@ $< $(LDFLAGS) 

clean:
	rm -f additionneur

FILE = LAZZARI-ARMOUR_Raphael	
zip:
	rm -rf $(FILE)
	mkdir $(FILE)
	cp additionneur.c AUTHOR Makefile $(FILE)
	zip -r $(FILE).zip $(FILE)
	rm -rf $(FILE)
	ls -l
