/*Reverse a list*/

/*Reverse a list by 2 variables*/
inverse(Liste, Res):-
    inverse(Liste, Res, []).

/*Reverse a list by 3 variables*/
inverse([], L, L).
inverse([T|Q], L, Acc):-
    inverse(Q, L, [T|Acc]).

/*Find if a word is palindrome*/
palindrome(P):- inverse(P, P, []).

/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : inverse([1,2,3,4,5,6,7,8,9], X).
 * The program will reverse the list and put it on X
*/

/*
 * Command : palindrome([k,a,y,a,k]).
 * The program will find if the list can be written
 * from the left to the right and 
 * from the right to the left
*/