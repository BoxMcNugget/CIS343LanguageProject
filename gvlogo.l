
%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "gvlogo.tab.h"

	extern void yyerror(const char* s);
%}

%%


penup					{ printf("PENUP"); return PENUP; }
pendown					{ printf("PENDOWN"); return PENDOWN; }
print					{ printf("PRINT"); return PRINT; }
save					{ printf("SAVE"); return SAVE; }
^(color)[0-255][0-255][0-255]	 	{ printf("COLOR"); return COLOR; }
clear					{ printf("CLEAR"); return CLEAR; }
^(turn)[0-359]				{ printf("TURN"); return TURN; }
move					{ printf("MOVE"); return MOVE; }
goat					{ printf("GOAT"); return GOAT; }
where					{ printf("WHERE"); return WHERE; }
;					{ printf("SEP"); return SEP; }



[ \t\n\r]+				{ printf("WHITESPACE");}//after testing replace with ";"


end					{ printf("END"); return END; }

\+					{ printf("PLUS"); return PLUS; }
-					{ printf("MINUS"); return SUB; }
\*					{ printf("MULTIPLY"); return MULT; }
\/					{ printf("DIVIDE"); return DIV; }
[0-9]+ 					{ printf("NUMBER"); return NUMBER; }

.					{ yyerror("Lexing Syntax error.\n"); printf("YYERROR: Stray Character is Unrecognized"); }

%%
