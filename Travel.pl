/*Travel in the world*/
/*Declaration of byCar, byTrain and byPlane */
byCar(auckland, hamilton).
byCar(hamilton, raglan).
byCar(valmont, saarbruecken).
byCar(valmont, metz).

byTrain(metz, frankfurt).
byTrain(saarbruecken, frankfurt).
byTrain(metz, paris).
byTrain(saarbruecken, paris).

byPlane(frankfurt, bangkok).
byPlane(frankfurt, singapore).
byPlane(paris, losAngeles).
byPlane(bangkok, auckland).
byPlane(singapore, auckland).
byPlane(losAngeles, auckland).

/*Condition to stop the program*/
voyage(X, Y, go(byCar(X, Y))):- byCar(X, Y).
voyage(X, Y, go(byTrain(X, Y))):- byTrain(X, Y).
voyage(X, Y, go(byPlane(X, Y))):- byPlane(X, Y).

/*Condition of recurivity*/
voyage(X, Y, go(byCar(X, Z, G))):- byCar(X, Z), voyage(Z, Y, G).
voyage(X, Y, go(byTrain(X, Z, G))):-	byTrain(X, Z), voyage(Z, Y, G).
voyage(X, Y, go(byPlane(X, Z, G))):-	byPlane(X, Z), voyage(Z, Y, G).

/*   HOW TO USE THE PROGRAM    */

/*
 * Command : voyage(metz, losAngeles).
 * The program will test every possibility to find a way to go from metz
 * to losAngeles
*/
