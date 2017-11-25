/*Flatten*/
/*Condition to stop*/
aplatir([], []).

/*Condition to see if T is a list and remove the list inside the list*/
aplatir(T, [T]):-
	not(is_list(T)).

/*	I put the Head and the Tail in the previous function*/
aplatir([T|Q], X):-
	aplatir(T,Y), aplatir(Q,U), append(Y,U,X).

/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : aplatir([[a,a,a],b,b,[b,b,a,c],[t,t,a]], X).
 * The program will remove lists inside the main list and place
 * the result in X
*/