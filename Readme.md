#Exemples simples de programmes JFlex

[JFlex](https://jflex.de/) est un générateur d'analyseurs lexicaux pour Java écrit en Java.

Il prend en entrée une spécification définie avec des expressions régulières et leurs actions associées et 
génère en sortie un programme java qui lit un fichier d'entrées, compare ces entrées avec les expressions régulières 
de la spécification et exécute les actions correspondantes.

L'analyseur lexical généré utilise un automate à états finis déterministe.

Si la plupart du temps les analyseurs lexicaux générés par JFlex servent de point d'entrée pour des analyseurs syntaxiques 
comme [CUP](http://www2.cs.tum.edu/projects/cup/) ou [BYacc/J](http://byaccj.sourceforge.net/), 
ils peuvent aussi, comme dans ces exemples, être utilisés seuls.

## Exemple 1 : un analyseur qui compte les 'a' et le 'e'

Spécification JFlex : [src/main/jflex/test1.flex](src/main/jflex/test1.flex)
La classe généree se trouvera dans **build/generated/sources/jflex/main/java/testJFlex/MonAnalyseur1.java**.

## Exemple 2 : un analyseur qui compte les minuscules, majuscules et les espaces...

Spécification JFlex : [src/main/jflex/test2.flex](src/main/jflex/test2.flex)
La classe généree se trouvera dans **build/generated/sources/jflex/main/java/testJFlex/MonAnalyseur2.java**.


## Exemple 3 : if/then/else 

Spécification JFlex : [src/main/jflex/test3.flex](src/main/jflex/test3.flex)
La classe généree se trouvera dans **build/generated/sources/jflex/main/java/testJFlex/MonAnalyseur3.java**.

## Construction des exemples :
La commande `./gradlew build` (ou `gradlew.bat build`) permet de générer les analyseurs, de les compiler et de générer une archive java (build/libs/JFlex_Examples.jar).

Pour Tester les exemples taper les commandes suivantes :


Exemple 1 :

```
java -Dfile.encoding=UTF-8 -cp build/libs/JFlex_Examples.jar testJFlex.MonAnalyseur1 test1.txt
```
Résultat prévu : 

```
le(1) te(2)st e(3)st importa(1)nt.
A(2)ussi la(3) ré(4)ussite(5), le(6) coura(4)ge(7), le(8) bon se(9)ns.
```

Exemple 2 :

```
java -Dfile.encoding=UTF-8 -cp build/libs/JFlex_Examples.jar testJFlex.MonAnalyseur2 test2.txt
```
Résultat prévu : 

```
Minuscules : 49 Majuscules : 1 Autre : 5 Blancs : 11
```

Exemple 3 : 

```
java -Dfile.encoding=UTF-8 -cp build/libs/JFlex_Examples.jar testJFlex.MonAnalyseur3 test3.txt
```
Résultat prévu : 

```
MRif
IDvitesse
OPREL>
NBRE65
MRthen
```

## Importation des exemples dans votre IDE favori (Eclipse/IntelliJ Idea/...)

Il est possible d'importer le projet, avec les exemples dans votre IDE favori.
Pour cela importer le projet comme un *projet gradle* et, avec un peu de chance, cela devrait bien se passer... 




 