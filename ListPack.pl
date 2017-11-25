/*List with a lot of same element*/

/*Pack a list*/
pack([],[]).
pack([T, T|Q], Res):- pack([[T, T]|Q], Res).
pack([[T|Q]|[T|Q2]], Res):- pack([[T, T|Q]|Q2], Res).
pack([T|Q], [[T]|Res]):-
	not(is_list(T)),
	pack(Q, Res).
pack([T|Q], [T|Res]):- pack(Q, Res).

/*decreases the height of the pack*/ 
encode([], []).
encode(Q, [[Long, X]|Y]):-
	pack(Q, [[X|Xs]|T]),
	length([X|Xs], Long),
	encode(T, Y).

/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : pack([a,a,a,b,b,b,b,a,c,t,t,a], X).
 * The program will create new lists to regroup same letter
*/

/*
 * Command : encode([a,a,a,b,b,b,b,a,c,t,t,a], X).
 * The program will create new lists with two variables
 * one with number of element the other one with the element
*/