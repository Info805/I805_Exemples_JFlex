package testJFlex;
%%
%class MonAnalyseur3
%standalone

/* définitions régulières */
sautLigne	= \n  | \r | \r\n
blanc	= [ \t]   
sep	= ({blanc} | {sautLigne})+
lettre    = [a-zA-Z]
chiffre   = [0-9]
id        = {lettre}({lettre}|{chiffre})*
nbre      = {chiffre}+(\.{chiffre}+)?(E[+\-]?{chiffre}+)?

%%

{sep}	{ /*pas d'action*/ }
if | then	| else			      
        {System.out.println("MR"+yytext());}
{id}	{System.out.println("ID"+yytext());}
{nbre}	{System.out.println("NBRE"+yytext());}
"<" | "<=" | ">" | "<>" | "="	
        {System.out.println("OPREL"+yytext());}