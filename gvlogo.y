//by Kyle Fink and Gabe Kucinich
%{
	#include <stdio.h>
%}

%union{
	float f;
}

%token number
%token plus
%token minus
%token 
%token end
%token equals

%type<f> number
%type<f> expression
%type<f> expression_list


%%

program:
			expression_list END		{printf("Complete\n");}
	;

expression_list:	expression
		|	exxpression expression_list
		;

expression:		number plus number equals	{printf("");}
		|	number minus number equals	{printf("");}
		;

%%
