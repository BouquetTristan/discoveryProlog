/*Hanoi Tower*/

/* Move N number of disc from left to right*/
hanoi(0, _,_,_).

hanoi(N, D, A, I):-
	N1 is N-1,
	hanoi(N1, D, I, A),
	write('déplacement de '), write(D), write(' vers '), write(A), nl,
	hanoi(N1, I, A, D).

hanoi(N):-
	hanoi(N, départ, intermédiaire, arrivé).

/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : hanoi(4).
 * The program will move the disc from the left to right
 * with rules of hanoi Tower
 * The program will write all movements you have to do
*/