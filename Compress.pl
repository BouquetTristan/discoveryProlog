/*Compress*/
/*Conditions to stop*/
compress([], []).
compress([T],[T]).

/*If there is two same elements in the list I 
 * just continu the list
*/
compress([T,T|Q], Res):- compress([T|Q], Res).
/*If I have two elemnts differents in the list
 * I put the first one in the list Res
*/
compress([T,U|Q], [T|Res]):- T \= U, compress([U|Q], Res).

/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : compress([a,a,a,e,e,b,b,b,e,t], X).
 * The program will compress the list in X = [a,e,b,e,t].
*/