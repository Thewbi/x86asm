lexer grammar fullMASMLexer;

NEWLINE : ( '\r' | '\n' | '\r\n' ) -> channel(HIDDEN) 
    ;

LINE_COMMENT : 
    ';' (~[\r\n])* -> channel(HIDDEN)
    ;

COMMENT :
    ';' ( ~'\n' )* -> channel(HIDDEN)
    ;

HASHTAG_COMMENT :
    '#' ( ~'\n' )* -> channel(HIDDEN)
    ;

SLASHSLASH_COMMENT :
    '/''/' ( ~'\n' )* -> channel(HIDDEN)
    ;

// I do not know what COMM is. It is output by MSVC. Use godbolt
COMM : 
    'C''O''M''M' (~[\r\n])* -> channel(HIDDEN)
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

// registers

AL : A L ;
AH : A H ;
CL : C L ;
CH : C H ;
DL : D L ;
DH : D H ;
BL : B L ;
BH : B H ;
R8B : R '8' B ;
R9B : R '9' B ;
R10B : R '1' '0' B ;
R11B : R '1' '1' B ;
R12B : R '1' '2' B ;
R13B : R '1' '3' B ;
R14B : R '1' '4' B ;
R15B : R '1' '5' B ;

AX : A X ;
EAX : E A X ;
CX : C X ;
ECX : E C X ;
DX : D X ;
EDX : E D X ;
BX : B X ;
EBX : E B X ;
DI : D I ;
EDI : E D I ;
SI : S I ;
ESI : E S I ;
BP : B P ;
EBP : E B P ;
SP : S P ;
ESP : E S P ;
R8W : R '8' W ;
R8D : R '8' D ;
R9W : R '9' W ;
R9D : R '9' D ;
R12D : R '1' '2' D ;
R13W : R '1' '3' W ;
R13D : R '1' '3' D ;
R14W : R '1' '4' W ;
R14D : R '1' '4' D ;

// mnemonics

ADD : A D D ;

CALL : C A L L ;
CMP : C M P ;

DIV : D I V ;

EXIT : E X I T ;

FLAT : 'F''L''A''T' ;

GROUP : 'G''R''O''U''P' ;

INC : I N C ;

JE : J E ;
JG : J G ;
JGE : J G E ;
JL : J L ;
JMP : J M P ;
JNE : J N E ;

LOOP : L O O P ;

MOV : M O V ;
MUL : M U L ;

POP : P O P ;
PUSH : P U S H ;

RET : R E T ;

SUB : S U B ;
SEGMENT : 'S''E''G''M''E''N''T' ;

// keywords

AND : 'A' 'N' 'D' ;
ASTERISK : '*' ;
AT_SIGN : '@' ;

DOUBLE_QUOTE : '"' ;

EQUALS : 'E''Q''U''A''L''S' ;

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

ALIGN : 'A''L''I''G''N' ;

BYTE : 'B' 'Y' 'T' 'E' ;

COLON : ':' ;
COMMA : ',' ;

// DIGITS_RADIX_OVERRIDE : '-'? [0-9]+ ;

DB : D B ;
DW : D W ;
DD : D D ;
DF : D F ;
DQ : D Q ;
DT : D T ;
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

DOT_CODE    : DOT 'c' 'o' 'd' 'e' ;
DOT_DATA    : DOT 'd' 'a' 't' 'a' ;
UNDERSCORE_DATA    : UNDERSCORE D A T A ;
DOT_MODEL   : DOT 'm' 'o' 'd' 'e' 'l' ;
DOT_STACK   : DOT 's' 't' 'a' 'c' 'k' ;

//C : C ;
PASCAL : P A S C A L ;
FORTRAN : F O R T R A N ;
BASIC : B A S I C ;
SYSCALL : S Y S C A L L ;
STDCALL : S T D C A L L ;

TINY : T I N Y ;
SMALL : S M A L L ;
MEDIUM : M E D I U M ;
COMPACT : C O M P A C T ;
LARGE : L A R G E ;
HUGE : H U G E ;
//FLAT : F L A T ;

DOLLAR_SIGN : '$' ;
DUP : 'D''U''P' ;
DWORD : 'D''W''O''R''D' ;

ENDP : 'E''N''D''P' ;
ENDM : 'E''N''D''M' ;
END : 'E''N''D' ;
EQU : 'E''Q''U' ;
EQUALS_SIGN : '=' ;
EVEN : 'E''V''E''N' ;
EXITM : 'E''X''I''T''M' ;

FAR : 'F''A''R' ;
FARSTACK : 'F''A''R''S''T''A''C''K' ;
FWORD : 'F''W''O''R''D' ;

GOTO : 'G''O''T''O' ;

INCLUDE : I N C L U D E ;

LPAREN : '(' ;
RPAREN : ')' ;

L_ANGULAR_BRACKET : '[' ;
R_ANGULAR_BRACKET : ']' ;

LOCAL : 'L''O''C''A''L' ;
LOCK : 'L''O''C''K' ;

MACRO : 'M' 'A' 'C' 'R' 'O' ;
MINUS : '-' ;
MMWORD : 'M''M''W''O''R''D' ;
MOD : 'M' 'O' 'D' ;

NEAR : 'N''E''A''R' ;
NEARSTACK : 'N''E''A''R''S''T''A''C''K' ;
NOT : 'N' 'O' 'T' ;

OWORD : 'O''W''O''R''D' ;
OFFSET : 'O''F''F''S''E''T' ;
OPTION : 'O''P''T''I''O''N' ;
ORG : 'O''R''G' ;

PERCENT_SIGN : '%' ;
PLUS : '+' ;
PROC : 'P''R''O''C' ;
PTR : 'P''T''R' ;

QUESTION_MARK : '?' ;
QWORD : 'Q''W''O''R''D' ;

REAL4 : 'R''E''A''L''4' ;
REAL8 : 'R''E''A''L''8' ;
REAL10 : 'R''E''A''L''1''0' ;
REQ : 'R''E''Q' ;
REP : 'R''E''P' ;
REPE : 'R''E''P''E' ;
REPZ : 'R''E''P''Z' ;
REPNE : 'R''E''P''N''E' ;
REPNZ : 'R''E''P''N''Z' ;

SBYTE : 'S''B''Y''T''E' ;
SDWORD : 'S''D''W''O''R''D' ;
SLASH : '/' ;
SHL : 'S' 'H' 'L' ;
SHR : 'S' 'H' 'R' ;
//SUBTITLE : S U B T I T L E -> pushMode(TITLEMODE) ;
SUBTITLE : S U B T I T L E ;
//SUBTTL : S U B T T L -> pushMode(TITLEMODE) ;
SUBTTL : S U B T T L ;
SWORD : 'S''W''O''R''D' ;
SQWORD : 'S''Q''W''O''R''D' ;
SINGLE_QUOTE : '\'';

TBYTE : 'T''B''Y''T''E' ;
//TITLE : T I T L E -> pushMode(TITLEMODE) ;
TITLE : T I T L E ;

UNDERSCORE : '_' ;

VARARG : 'V''A''R''A''R''G' ;

WORD : 'W''O''R''D' ;

XMMWORD : 'X''M''M''W''O''R''D' ;

YMMWORD : 'Y''M''M''W''O''R''D' ;











//IDENTIFIER : ( ('$')? ('@')? DOT? ('_')* [_0-9a-zA-Z]* [a-zA-Z]+ ) ( ('$')? DOT? ('_')* [_0-9a-zA-Z]* )+ ;
// $SG9919
// n$
// reversed$
// dataRequest
// $LN2@main
// $LN7
IDENTIFIER : ( ('$') | ('@') | DOT | ('_') )? ( ('$') | ('@') | DOT | [_0-9a-zA-Z] )+
    ;

WS : [ \t\r]+ -> skip ;

SINGLE_QUOTE_LITERAL : UNTERMINATED_SINGLE_QUOTE_LITERAL SINGLE_QUOTE ;
UNTERMINATED_SINGLE_QUOTE_LITERAL : SINGLE_QUOTE (~['\\\r\n] | '\\' (. | EOF))* ;

STRING_LITERAL : UNTERMINATED_STRING_LITERAL '"' ;
UNTERMINATED_STRING_LITERAL : '"' (~["\\\r\n] | '\\' (. | EOF))* ;







mode TITLEMODE ;

TM_NEWLINE     : [\n] -> mode(DEFAULT_MODE), skip ;
TM_EOL         : [\r\n]+ -> mode(DEFAULT_MODE) ; //, skip ;
TM_SPACE       : ' ' ; //-> skip ;
TM_TAB         : [\t]+ ; //-> skip ;
TM_DATA        : ( DOT | ',' | '-' | '(' | ')' | [a-zA-Z0-9] )+; //-> skip ;