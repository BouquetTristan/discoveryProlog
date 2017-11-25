/*   Search Tree   */
/*Declaration of right root with a and b*/
rightRoot(a).
rightRoot(b).

/*Declaration of left root with a and b*/
leftRoot(a).
leftRoot(b).

/*Declaration of middle root whit b*/
middleRoot(b).

/*Multiple conditions : all of them have to be true*/
tree(X) :- middleRoot(X), leftRoot(X), rightRoot(X).
/*In condition ',' significate 'and' */


/*       HOW TO USE THIS PROGRAM       */

/*
 * Command : tree(a).
 * You will have the answer false.
 * The middleRoot(a) doesn't exist so the condition is not true
*/

/*
 * Command : tree(b).
 * You will have the answer true.
 * All of condition are true
*/

/*
 * Command : tree(X).
 * The program will test all possible answers
 * You'll only have X = b.
*/
