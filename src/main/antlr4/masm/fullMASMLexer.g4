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

DOT : '.' ;

INCLUDE : I N C L U D E ;

SUBTITLE : S U B T I T L E -> pushMode(TITLEMODE) ;
SUBTTL : S U B T T L -> pushMode(TITLEMODE) ;

TITLE : T I T L E -> pushMode(TITLEMODE) ;



IDENTIFIER : ( ('@')? DOT? ('_')* [_0-9a-zA-Z]* [a-zA-Z]+ ) ( DOT? ('_')* [_0-9a-zA-Z]+ )* ;

WS : 
    [ \t\r]+ -> skip 
    ;

NEWLINE : [\n] ;



mode TITLEMODE ;

EOL         : [\r\n]+ -> mode(DEFAULT_MODE) ; //, skip ;
SPACE       : ' ' ; //-> skip ;
TAB         : [\t]+ ; //-> skip ;
DATA        : ( DOT | ',' | '-' | '(' | ')' | [a-zA-Z0-9] )+; //-> skip ;