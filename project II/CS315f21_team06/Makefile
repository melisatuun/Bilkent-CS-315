flyrone: y.tab.c lex.yy.c
	gcc -o parser y.tab.c
y.tab.c: CS315f21_team06.y lex.yy.c
	yacc -v CS315f21_team06.y
lex.yy.c: CS315f21_team06.l
	lex CS315f21_team06.l
clean:
	rm -f lex.yy.c y.tab.c flyrone
