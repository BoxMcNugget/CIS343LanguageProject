
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
color [0-255] [0-255] [0-255] 		{ printf("COLOR"); return COLOR; }
clear					{ printf("CLEAR"); return CLEAR; }
turn [0-359]				{ printf("TURN"); return TURN; }
move					{ printf("MOVE"); return MOVE; }
goat					{ printf("GOAT"); return GOAT; }//goto already exists, sub goat
where					{ printf("WHERE"); return WHERE; }
([A-Z][a-z])+				{ printf("WORD"); return WORD; }
\"					{ printf("QUOTE"); return QUOTE; }
;					{ printf("SEP"); return SEP; }



[ \t\n\r]+				{ printf("WHITESPACE");}//after testing replace with ";"


end					{ printf("END"); return END; }

\+					{ printf("PLUS"); return PLUS; }
-					{ printf("MINUS"); return MINUS; }
\*					{ printf("MULTIPLY"); return MULTIPLY; }
\/					{ printf("DIVIDE"); return DIVIDE; }
[0-9]+ 					{ printf("NUMBER"); return NUMBER; }
\.					{ printf("DOT"); return DOT; }

.					{ yyerror("Lexing Syntax error.\n"); printf("YYERROR: Stray Character is Unrecognized"); }

%%
