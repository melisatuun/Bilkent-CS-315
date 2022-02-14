%{
  #include <stdio.h>
  #include <stdlib.h>
  extern FILE *yyin;
%}
%token PRINT RETURN IF ELSE LEFT_PAR RIGHT_PAR COMMA DOT MULT DIV SUM SUB COLON SEMICOLON LEFT_BRACE RIGHT_BRACE

%token COMMENT ASSIGNMENT_OP INT_TYPE STRING_TYPE BOOL_TYPE DOUBLE_TYPE TRUE FALSE WHILE FOR

%token EQUAL NOT_EQUAL GREATER_EQUAL LESS_EQUAL GREATER LESS OR AND DOUBLE INTEGER INPUT

%token READ_HEADING READ_ALTITUDE READ_TEMPERATURE GO_UP GO_DOWN GO_FORWARD GO_BACKWARD STOP_HORIZONTALLY MOVE_LEFT MOVE_RIGHT STOP_TURN_LEFT

%token STOP_TURN_RIGHT TURN_ON_NOZZLE TURN_OFF_NOZZLE WAIT TURN CONNECT_TO_BASE_COMPUTER_THROUGH_WIFI

%token BEGIN_PR END IDENTIFIER STRING ANY_TEXT

%%
program: BEGIN_PR statement_block END {printf("\rInput program is valid.\n");};
statement_block: statement | statement statement_block;
statement: return_statement 
| conditional_statement 
| in_out_statement 
| comment_statement 
| assignment_statement 
| function_call_statement 
| function_def_statement 
| loop_statement 
| primitive_function_call;

return_statement: RETURN LEFT_PAR expression RIGHT_PAR SEMICOLON;
conditional_statement: IF LEFT_PAR expression RIGHT_PAR LEFT_BRACE statement_block RIGHT_BRACE
| IF LEFT_PAR expression RIGHT_PAR LEFT_BRACE statement_block RIGHT_BRACE ELSE conditional_statement
| IF LEFT_PAR expression RIGHT_PAR LEFT_BRACE statement_block RIGHT_BRACE ELSE LEFT_BRACE statement_block RIGHT_BRACE;

in_out_statement: input_statement | out_statement;
comment_statement: COMMENT;
assignment_statement: type IDENTIFIER ASSIGNMENT_OP value SEMICOLON
| type IDENTIFIER ASSIGNMENT_OP IDENTIFIER SEMICOLON
| IDENTIFIER ASSIGNMENT_OP value SEMICOLON
| IDENTIFIER ASSIGNMENT_OP IDENTIFIER SEMICOLON
| type IDENTIFIER ASSIGNMENT_OP function_call_statement
| IDENTIFIER ASSIGNMENT_OP function_call_statement
| type IDENTIFIER ASSIGNMENT_OP primitive_function_call
| IDENTIFIER ASSIGNMENT_OP primitive_function_call
| type IDENTIFIER ASSIGNMENT_OP expression SEMICOLON
| IDENTIFIER ASSIGNMENT_OP expression SEMICOLON;

function_call_statement: IDENTIFIER LEFT_PAR RIGHT_PAR SEMICOLON
| IDENTIFIER LEFT_PAR parameters RIGHT_PAR SEMICOLON ;

function_def_statement: type IDENTIFIER LEFT_PAR RIGHT_PAR LEFT_BRACE statement_block RIGHT_BRACE
| type IDENTIFIER LEFT_PAR parameters RIGHT_PAR LEFT_BRACE statement_block RIGHT_BRACE;

loop_statement: for_statement | while_statement;

input_statement: IDENTIFIER ASSIGNMENT_OP INPUT LEFT_PAR RIGHT_PAR SEMICOLON
| type IDENTIFIER ASSIGNMENT_OP INPUT LEFT_PAR RIGHT_PAR SEMICOLON;

out_statement: PRINT LEFT_PAR value RIGHT_PAR SEMICOLON
| PRINT LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON
| PRINT LEFT_PAR expression RIGHT_PAR SEMICOLON;

for_statement: FOR LEFT_PAR assignment_statement comp_expression SEMICOLON statement RIGHT_PAR LEFT_BRACE statement_block RIGHT_BRACE;
while_statement: WHILE LEFT_PAR comp_expression RIGHT_PAR LEFT_BRACE statement_block RIGHT_BRACE
| WHILE LEFT_PAR boolean RIGHT_PAR LEFT_BRACE statement_block RIGHT_BRACE 
| WHILE LEFT_PAR IDENTIFIER RIGHT_PAR LEFT_BRACE statement_block RIGHT_BRACE;

parameters: type IDENTIFIER COMMA parameters | IDENTIFIER COMMA parameters | value COMMA parameters | type IDENTIFIER | IDENTIFIER | value ;

expression: arith_expression | comp_expression;
arith_expression: sum_expression 
| mult_expression
| sum_expression operation arith_expression
| mult_expression operation arith_expression;

comp_expression: arith_comp_expression arith_expression
| arith_comp_expression factor 
| factor_comp_expression arith_expression
| factor_comp_expression factor;

arith_comp_expression: arith_expression general_comparator;
factor_comp_expression: factor general_comparator;

mult_expression: mult_operation_expression factor | mult_operation_expression mult_expression;
mult_operation_expression: factor mult_div_operation;

sum_expression:sum_operation_expression factor | sum_operation_expression sum_expression;
sum_operation_expression: factor sum_sub_operation;

operation: mult_div_operation | sum_sub_operation;
sum_sub_operation: SUM | SUB;
mult_div_operation: MULT | DIV;
factor: IDENTIFIER | value;

boolean: TRUE | FALSE;
type: INT_TYPE | STRING_TYPE | BOOL_TYPE | DOUBLE_TYPE;
general_comparator: EQUAL | NOT_EQUAL | GREATER_EQUAL | LESS_EQUAL | GREATER | LESS | OR | AND;
value: INTEGER | STRING | DOUBLE | boolean;

primitive_function_call: READ_HEADING LEFT_PAR RIGHT_PAR SEMICOLON 
| READ_ALTITUDE LEFT_PAR RIGHT_PAR SEMICOLON 
| READ_TEMPERATURE LEFT_PAR RIGHT_PAR SEMICOLON
| GO_UP LEFT_PAR INTEGER RIGHT_PAR SEMICOLON 
| GO_UP LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON 
| GO_DOWN LEFT_PAR INTEGER RIGHT_PAR SEMICOLON 
| GO_DOWN LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON 
| GO_FORWARD LEFT_PAR INTEGER RIGHT_PAR SEMICOLON 
| GO_FORWARD LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON 
| GO_BACKWARD LEFT_PAR INTEGER RIGHT_PAR SEMICOLON 
| GO_BACKWARD LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON 
| STOP_HORIZONTALLY LEFT_PAR RIGHT_PAR SEMICOLON 
| MOVE_RIGHT LEFT_PAR INTEGER RIGHT_PAR SEMICOLON
| MOVE_RIGHT LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON
| MOVE_LEFT LEFT_PAR INTEGER RIGHT_PAR SEMICOLON
| MOVE_LEFT LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON
| STOP_TURN_LEFT LEFT_PAR INTEGER RIGHT_PAR SEMICOLON 
| STOP_TURN_LEFT LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON 
| STOP_TURN_RIGHT LEFT_PAR INTEGER RIGHT_PAR SEMICOLON 
| STOP_TURN_RIGHT LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON 
| TURN_ON_NOZZLE LEFT_PAR RIGHT_PAR SEMICOLON 
| TURN_OFF_NOZZLE LEFT_PAR RIGHT_PAR SEMICOLON 
| WAIT LEFT_PAR INTEGER RIGHT_PAR SEMICOLON
| WAIT LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON
| TURN LEFT_PAR INTEGER RIGHT_PAR SEMICOLON
| TURN LEFT_PAR IDENTIFIER RIGHT_PAR SEMICOLON
| CONNECT_TO_BASE_COMPUTER_THROUGH_WIFI LEFT_PAR RIGHT_PAR SEMICOLON;
%%
#include "lex.yy.c"
int main(){
  return yyparse();
} 
int yyerror(char *s) {
  extern int yylineno; 
  fprintf(stderr,"%s at line: %d with next token: %d!\n", s, yylineno, yychar); 
  printf("\r");
} 