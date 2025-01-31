grammar Demo;

program: subroutine+;

subroutine: 'sub' ID '{' body '}';

body: statement+;

statement: print | read | gosub | assign | halt | biz | bgz;

print: 'print' expr ';';
read: 'read' ID ';';
gosub: 'gosub' ID ';';
assign: ID '=' expr ';';
halt: 'halt' ';';
biz: 'biz' expr ID ';';
bgz: 'bgz' expr ID ';';

expr:
	expr op = ('*' | '/') expr		# MulDiv
	| expr op = ('+' | '-') expr	# AddSub
	| ID							# Id
	| NUMBER						# Number
	| STRING						# String
	| '(' expr ')'					# Parens;

NUMBER: [0-9]+;
ID: [a-zA-Z][a-zA-Z0-9]*;
STRING: '"' .*? '"';
ADD: '+';
SUB: '-';
MUL: '*';
DIV: '/';
LPAREN: '(';
RPAREN: ')';
WS: [ \t\r\n]+ -> skip;