package testJFlex;
%%
%class MonAnalyseur2
%standalone
%{
static int minus = 0,majus = 0,autres =0,blancs =0;
%}
%eof{
System.out.println("Minuscules : "+minus+" Majuscules : "
          +majus+" Autre : "+autres+" Blancs : "+blancs);
%eof}

%%

[a-z] {minus++;}
[A-Z] {majus++;}
[\ ]  {blancs++;}
\n    {}
.     {autres++;}