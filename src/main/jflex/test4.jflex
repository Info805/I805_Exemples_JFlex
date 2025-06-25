package testJFlex;

%%
/* optionsjflex */
%class MonAnalyseur4
%standalone

%{
public static int nbLe, nbI;
%}

// definitions regulieres

l  =    l|L
e  =    e|E
le =    {l}{e}
i  =    i|I|y|Y|ï|Ï|ÿ|Y

%%

{le}    { nbLe++; System.out.print("LE"+nbLe); }
{i}     { nbI++; System.out.print("I"+nbI); }
.       { System.out.print(yytext().toUpperCase()); }