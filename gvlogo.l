//by Kyle Fink and Gabe Kucinich
%{
	#include <stdio.h>
%}

%%

[0-9]+ 			{printf("Integer")}

%%

int main(int argc, char** argv){
	yylex();
	return 0;
}
