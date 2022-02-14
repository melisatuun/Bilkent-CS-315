%{
  #include <stdio.h>
  #include <stdlib.h>
%}
%option yylineno
print print
return return
if if
else else
left_par "("
right_par ")"
comma ","
dot "."
mult "*"
div "/"
sum \+
sub \-
colon ":"
semicolon ";"
left_brace "{"
right_brace "}"
comment_line "//"
digit [0-9]
assignment_op "="
int_type int
string_type string
bool_type bool
double_type double
true true
false false
while while
for for
equal "=="
not_equal "!="
greater_equal ">="
less_equal "<="
greater ">"
less "<"
or "||"
and "&&"
input input
int {digit}+
double {digit}*{dot}{digit}+
read_heading READ_HEADING
read_altitude READ_ALTITUDE
read_temperature READ_TEMPERATURE
go_up GO_UP
go_down GO_DOWN
go_forward GO_FORWARD
go_backward GO_BACKWARD
stop_horizontally STOP_HORIZONTALLY
move_left MOVE_LEFT
move_right MOVE_RIGHT
stop_turn_left STOP_TURN_LEFT
stop_turn_right STOP_TURN_RIGHT
nozzle_turn_on TURN_ON_NOZZLE
nozzle_turn_off TURN_OFF_NOZZLE
wait WAIT
turn TURN
connect_to_base_computer_through_wifi CONNECT_TO_BASE_COMPUTER_THROUGH_WIFI
begin BEGIN_PR
end END
comment {comment_line}([^\n])*
identifier [A-Za-z][A-Za-z0-9]*
string \"([^\\\"]|\\\"|\\\n|\\\\)*\"
%%
{print}           return PRINT;
{return}          return RETURN;
{if}              return IF;
{else}            return ELSE;
{left_par}        return LEFT_PAR;
{right_par}       return RIGHT_PAR;
{comma}           return COMMA;
{dot}             return DOT;
{mult}            return MULT;
{div}             return DIV;
{sum}             return SUM;
{sub}             return SUB;
{colon}           return COLON;
{semicolon}       return SEMICOLON;
{left_brace}      return LEFT_BRACE;
{right_brace}     return RIGHT_BRACE;
{comment}   return COMMENT;
{assignment_op}   return ASSIGNMENT_OP;
{int_type}        return INT_TYPE;
{string_type}     return STRING_TYPE;
{bool_type}       return BOOL_TYPE;
{double_type}     return DOUBLE_TYPE;
{true}            return TRUE;
{false}           return FALSE;
{while}           return WHILE;
{for}             return FOR;
{equal}           return EQUAL;
{not_equal}       return NOT_EQUAL;
{greater_equal}   return GREATER_EQUAL;
{less_equal}      return LESS_EQUAL;
{greater}         return GREATER;
{less}            return LESS;
{or}              return OR;
{and}             return AND;
{double}          return DOUBLE;
{int}             return INTEGER;
{input}           return INPUT;
{read_heading}          return READ_HEADING;
{read_altitude}         return READ_ALTITUDE;
{read_temperature}      return READ_TEMPERATURE;
{go_up}                 return GO_UP;
{go_down}               return GO_DOWN;
{go_forward}            return GO_FORWARD;
{go_backward}           return GO_BACKWARD;
{stop_horizontally}     return STOP_HORIZONTALLY;
{move_left}             return MOVE_LEFT;
{move_right}            return MOVE_RIGHT;
{stop_turn_left}        return STOP_TURN_LEFT;
{stop_turn_right}       return STOP_TURN_RIGHT;
{nozzle_turn_on}        return TURN_ON_NOZZLE;
{nozzle_turn_off}       return TURN_OFF_NOZZLE;
{wait}                  return WAIT;
{turn}                  return TURN;
{connect_to_base_computer_through_wifi}         return CONNECT_TO_BASE_COMPUTER_THROUGH_WIFI;
{begin}                 return BEGIN_PR;
{end}                   return END;
{identifier}            return IDENTIFIER;
{string}                return STRING;
.                 ;
%%
int yywrap() {
    return 1;
}