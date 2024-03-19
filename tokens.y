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



%%
