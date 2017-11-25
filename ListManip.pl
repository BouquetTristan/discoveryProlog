/*Manipulate a list*/

/*Find the last element of a list*/
my_last([Y|[]], Y).
my_last([_|Q], Y):- my_last(Q,Y).

/*Find the Lth element of a list*/
element(Y, [Y|_], 1).
element(Res, [_|Q], L):- L1 is L-1,
					element(Res, Q, L1).

/*Count the number of element of a list*/
count([_|[]], X).
count([_|Q], Res):- Res1 is Res+1,
				count(Q, Res1).

/*Find if the list is odd or pair*/
impair([_|[]]).
impair([_,_|Q]):- impair(Q).

/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : my_last([a,a,b,e,r,t,e,c,k], X).
 * The program will find the last element of the list
*/

/*
 * Command : element([a,a,b,e,r,t,e,c,k], 5).
 * The program will find the fifth element of the list
*/

/*
 * Command : count([a,a,b,e,r,t,e,c,k], X).
 * The program will calculate the number of elements of the list
*/

/*
 * Command : impair([a,a,b,e,r,t,e,c,k]).
 * The program will say if the list is ood or pair
*/

