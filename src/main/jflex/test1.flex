package testJFlex;
%%
/* optionsjflex */
%class MonAnalyseur1
%standalone
%{
// On désire compter le nb de "a" et "e"
// s'insere dans la classe MonAnalyseur1
public static int nbA = 0, nbE = 0;  
%}

// definitions
a = a|A|à|â|ä|Â|Ä|À
e = e|E|é|è|ê|ë|È|Ê|É

%%

{a} 	{nbA++; System.out.print(yytext()+"("+nbA+")");}
{e} 	{nbE++; System.out.print(yytext()+"("+nbE+")");}
.		{System.out.print(yytext()); }