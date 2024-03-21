//by Kyle Fink and Gabe Kucinich
%{
	#include <stdio.h>
%}

%%

//Language commands
penup			{ printf("PENUP"), return PENUP }
pendown			{ printf("PENDOWN"), return PENDOWN }
print			{ printf("PRINT"), return PRINT }
save			{ printf("SAVE"), return SAVE }
color			{ printf("COLOR"), return COLOR }
clear			{ printf("CLEAR"), return CLEAR }
turn			{ printf("TURN"), return TURN }
move			{ printf("MOVE"), return MOVE }
goat			{ printf("GOAT"), return GOAT }//goto already exists, sub goat
where			{ printf("WHERE"), return WHERE }

[0-9]+ 			{ printf("INTEGER"), return INTEGER }

%%

int main(int argc, char** argv){
	yylex();
	return 0;
}
