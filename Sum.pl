/*Add all number in a list together*/
/*Condition to stop where the list is void*/
add([],0).

/*Travel in the list and add the element to the second parameters in the function*/
add([X|T],B):- add(T,N), B is N+X.

/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : add([1,3,5,1,8], X).
 * The program will travel in the list and add all elements and put that on X
*/