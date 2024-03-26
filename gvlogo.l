//by Kyle Fink and Gabe Kucinich
%{
	#include <stdio.h>
	#include <stdlib.h>
	#include "gvlogo.tab.h"
%}

%%

//Language Commands
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

//Whitespace Character?
//We don't want to return here because we want to ignore whitespace
[ \t\n\r]+				{ printf("WHITESPACE");}

//Start and End Commands
start					{ printf("START"); return START; }
end					{ printf("END"); return END; }

//Calculator Commands
\+					{ printf("PLUS"); return PLUS; }
-					{ printf("MINUS"); return MINUS; }
\*					{ printf("MULTIPLY"); return MULTIPLY; }
/					{ printf("DIVIDE"); return DIVIDE; }
[0-9]+ 					{ printf("FLOAT"); return FLOAT; }//before return we need to store the int with an atof function
\.					{ printf("DOT"); return DOT; }

//Stray Characters
.					{ printf("YYERROR: Stray Character is Unrecognized"); }
%%
