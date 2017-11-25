/*Color Frontier*/

/*Declaration of all color*/
couleur(rouge).
couleur(jaune).
couleur(vert).
couleur(bleu).

/* X and V can't be the same*/
voisin(X, V):-
	X \= V.

/*Main program*/
region(R1,R2,R3,R4,R5,R6 ):- 
			/*Declaration of 6 variables of color*/
			couleur(R1),
			couleur(R2),
			couleur(R3),
			couleur(R4),
			couleur(R5),
			couleur(R6),

			/*List of color which can't be the same*/
			voisin(R1,R2),
			voisin(R1,R3),
			voisin(R1,R5),
			voisin(R1,R6),

			voisin(R2,R1),
			voisin(R2,R3),
			voisin(R2,R4),
			voisin(R2,R5),
			voisin(R2,R6),

			voisin(R3,R1),
			voisin(R3,R2),
			voisin(R3,R4),
			voisin(R3,R6),

			voisin(R4,R2),
			voisin(R4,R3),

			voisin(R5,R1),
			voisin(R5,R2),
			voisin(R5,R6),

			voisin(R6,R1),
			voisin(R6,R2),
			voisin(R6,R3),
			voisin(R6,R5).


/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : region(A, B, C, D, E, F).
 * The program will test every possibilty to put a color on every variable 
 * and respect all conditions
*/