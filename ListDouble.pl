/*Duplicate the double of a list*/

/*Double every element of a list*/ 
dupli([], []).
dupli([T|Q], [T,T|X]):- dupli(Q, X).

/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : dupli([a,a,a,b,b,b,b,a,c,t,t,a], X).
 * The program will duplicate every element of the
 * list and put two elements each time in X
*/