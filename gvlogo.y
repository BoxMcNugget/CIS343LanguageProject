//by Kyle Fink and Gabe Kucinich
%{
	#include <stdio.h>
%}

%union{
	float f;
}
//Language tokens
%token PENUP
%token PENDOWN
%token PRINT
%token SAVE
%token COLOR
%token CLEAR
%token TURN
%token MOVE
%token GOAT
%token WHERE
%token WORD

//Start and End tokens
%token START
%token END

//Calculator tokens
%token PLUS
%token MINUS
%token MULTIPLY
%token DIVIDE
%token INTEGER
%token DOT


%type<f> number
%type<f> expression
%type<f> expression_list


%%

program:
			START something END		{printf("Complete\n");}
	;

something:		equation
	|		sentence
	;

//------------------------------------ EQUATION --------------------------------
equation:		expression equals
	|		expression equation
	;

expression:		INTEGER operator INTEGER		{printf("");}
	;

operator:		MULTIPLY
	|		DIVIDE
	|		PLUS
	|		MINUS
	;
//------------------------------------------------------------------------------

//------------------------------------ SENTENCE --------------------------------
sentence:		command
	|		print
	|		SAVE path
	|		color
	|		move
	;

command:		PENUP
	|		PENDOWN
	|		COLOR
	|		CLEAR
	|		TURN
	|		WHERE			
	;

print:
			PRINT QUOTE words QUOTE
	;

words:			WORD
	|		WORD SPACE
	|		WORD SPACE words
	;

path:
			WORD DOT WORD
	;

move:	
			MOVE INTEGER
	;


%%
