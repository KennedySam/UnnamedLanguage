%option nounput yylineno

name		[_a-zA-Z][_a-zA-Z0-9]*
whitespace	[ \r\t\v\n]
linefeed	\n
digit		0|[1-9][0-9]*

%%
{name}			{ return NAME; }
{digit}			{ return DIGIT; }
{whitespace}	
"if"			{ return IF; }
"unless"		{ return UNLESS; }
"not"			{ return NOT; }
"for"			{ return FOR; }
"while"			{ return WHILE; }
"def"			{ return DEFINE; }
"var"			{ return VAR; }
"con"			{ return CON; }
"return"		{ return RETURN;}

":"				{ return COLON; }
";"				{ return SEMICOLON; }
"->"			{ return RIGHT_ARROW; }
"("				{ return LEFT_BRACKET; }
")"				{ return RIGHT_BRACKET; }
"{"				{ return LEFT_CURLY_BRACE; }
"}"				{ return RIGHT_CURLY_BRACE; }
"["				{ return LEFT_SQUARE_BRACE; }
"]"				{ return RIGHT_SQUARE_BRACE; }
"<"				{ return LEFT_ANGLE_BRACE; }
">"				{ return RIGHT_ANGLE_BRACE; }

"+"				{ return PLUS; }
"-"				{ return MINUS; }
"*"				{ return MULTIPLY; }
"/"				{ return DIVIDE; }
"="				{ return EQUALS; }
"=="			{ return DOUBLE_EQUALS; }