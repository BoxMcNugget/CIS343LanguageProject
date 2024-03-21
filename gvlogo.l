//by Kyle Fink and Gabe Kucinich
%{
	#include <stdio.h>
%}

%%

//Language commands
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

//Space Charchter?
[ ]{1,}					{ printf("SPACE"); return SPACE;}

//Start and End Commands
start					{ printf("START"); return START; }
end					{ printf("END"); return END; }

//calculator commands
\+					{ printf("PLUS"); return PLUS; }
-					{ printf("MINUS"); return MINUS; }
\*					{ printf("MULTIPLY"); return MULTIPLY; }
/					{ printf("DIVIDE"); return DIVIDE; }
[0-9]+ 					{ printf("INTEGER"); return INTEGER; }
DOT					{ printf("DOT"); return DOT; }

%%

int main(int argc, char** argv){
	yylex();
	return 0;
}
