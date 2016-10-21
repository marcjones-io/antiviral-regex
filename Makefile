main:
	flex regex.l
	gcc -o a.out lex.yy.c -ll

clean:
	/bin/rm -f *.o *~ a.out *.c