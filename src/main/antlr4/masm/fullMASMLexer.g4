lexer grammar fullMASMLexer;

LINE_COMMENT : 
    ';' ~[\r\n]* -> channel(HIDDEN)
    ;

COMMENT :
    ';' ( ~'\n' )* -> channel(HIDDEN)
    ;

BLOCK_COMMENT
    : '/*' .*? '*/' -> skip
    ;

fragment A : [aA]; // match either an 'a' or 'A'
fragment B : [bB];
fragment C : [cC];
fragment D : [dD];
fragment E : [eE];
fragment F : [fF];
fragment G : [gG];
fragment H : [hH];
fragment I : [iI];
fragment J : [jJ];
fragment K : [kK];
fragment L : [lL];
fragment M : [mM];
fragment N : [nN];
fragment O : [oO];
fragment P : [pP];
fragment Q : [qQ];
fragment R : [rR];
fragment S : [sS];
fragment T : [tT];
fragment U : [uU];
fragment V : [vV];
fragment W : [wW];
fragment X : [xX];
fragment Y : [yY];
fragment Z : [zZ];

ASTERISK : '*' ;
AND : 'A' 'N' 'D' ;

EQ : 'E' 'Q' ;
NE : 'N' 'E' ;
LT : 'L' 'T' ;
LE : 'L' 'E' ;
GT : 'G' 'T' ;
GE : 'G' 'E' ;

OR : 'O' 'R' ;
XOR : 'X' 'O' 'R' ;

// https://en.wikibooks.org/wiki/6502_Assembly
BIN_NUMERIC : '%' [0-1]+ ;
DEC_NUMERIC : '-'? [0-9]+ ;
HEX_NUMERIC : '$' [a-fA-F0-9]+ ;

COLON : ':' ;

// DIGITS_RADIX_OVERRIDE : '-'? [0-9]+ ;

DOT : '.' ;

DOT_386     : '.''3''8''6' ;
DOT_386P    : '.''3''8''6''p' ;
DOT_486     : '.''4''8''6' ;
DOT_486P    : '.''4''8''6''P' ;
DOT_586     : '.''5''8''6' ;
DOT_586P    : '.''5''8''6''P' ;
DOT_686     : '.''6''8''6' ;
DOT_686P    : '.''6''8''6''P' ;
DOT_387     : '.''3''8''7' ;

DOT_STACK   : DOT 's' 't' 'a' 'c' 'k' ;

LPAREN : '(' ;
RPAREN : ')' ;

PLUS : '+' ;

SLASH : '/' ;
SHL : 'S' 'H' 'L' ;
SHR : 'S' 'H' 'R' ;

INCLUDE : I N C L U D E ;

MINUS : '-' ;
MOD : 'M' 'O' 'D' ;

NOT : 'N' 'O' 'T' ;

SUBTITLE : S U B T I T L E -> pushMode(TITLEMODE) ;
SUBTTL : S U B T T L -> pushMode(TITLEMODE) ;

//TITLE : T I T L E -> pushMode(TITLEMODE) ;
TITLE : T I T L E ;



IDENTIFIER : ( ('@')? DOT? ('_')* [_0-9a-zA-Z]* [a-zA-Z]+ ) ( DOT? ('_')* [_0-9a-zA-Z]+ )* ;

WS : [ \t\r]+ -> skip ;

NEWLINE : [\n] ;



mode TITLEMODE ;

TM_NEWLINE     : [\n] -> mode(DEFAULT_MODE), skip ;
TM_EOL         : [\r\n]+ -> mode(DEFAULT_MODE) ; //, skip ;
TM_SPACE       : ' ' ; //-> skip ;
TM_TAB         : [\t]+ ; //-> skip ;
TM_DATA        : ( DOT | ',' | '-' | '(' | ')' | [a-zA-Z0-9] )+; //-> skip ;