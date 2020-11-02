package testJFlex;
%%
%class MonAnalyseur2
%standalone
%{
static int minis = 0,majus = 0,autres =0,blancs =0;
%}
%eof{
System.out.println("Minuscules : "+minis+" Majuscules : "
          +majus+" Autre : "+autres+" Blancs : "+blancs);
%eof}

%%

[a-z] {minis++;}
[A-Z] {majus++;}
[\ ]  {blancs++;}
\n    {}
.     {autres++;}