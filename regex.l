%{
	/* marc jones - mj3tq - dada assignment 5 - due 6/30 */
	int lineno = 0;
%}

%%

\n	{ lineno++; }  

push.*\n.*ret { lineno++; printf("\nWarning: Tricky Jump on line %i", lineno); printf("\nCode: %s",yytext);}

mov.+eax,[0-9][0-9|A-F]h.*\n.*mov.+dword.ptr.\[eax\] { lineno++; printf("\nWarning: Interrupt Hook using EAX on line %i", lineno); printf("\nCode: %s",yytext); }

mov.+ebx,[0-9][0-9|A-F]h.*\n.*mov.+dword.ptr.\[ebx\] { lineno++; printf("\nWarning: Interrupt Hook using EBX on line %i", lineno); printf("\nCode: %s",yytext); }

. return yytext[0];


%%
