grammar Demo;

program: subroutine+;

subroutine: 'sub' ID '{' body '}';

body: statement+;

statement: print | read | gosub | assign | halt | biz | bgz;

print: 'print' STRING | ID ';';
read: 'read' ID ';';
gosub: 'gosub' ID ';';
assign: ID '=' expr ';';
halt: 'halt' ';';
biz: 'biz' ID ID ';';
bgz: 'bgz' ID ID ';';

expr: ID | NUMBER | expr '+' expr | expr '-' expr;

NUMBER: [0-9]+;
ID: [a-zA-Z][a-zA-Z0-9]*;
STRING: '"' .*? '"';