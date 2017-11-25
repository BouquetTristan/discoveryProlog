/*Path to the goal */
/*Declaration of connecte, which are two numbers together */
connecte(1,2).
connecte(3,4).
connecte(5,6).
connecte(7,8).
connecte(9,10).
connecte(12,13).
connecte(13,14).
connecte(15,16).
connecte(17,18).
connecte(19,20).
connecte(4,1).
connecte(6,3).
connecte(4,7).
connecte(6,11).
connecte(14,9).
connecte(11,15).
connecte(16,12).
connecte(14,17).
connecte(16,19).

/*Condition to stop the program if the numbers are same*/
chemin(Y, Y).
/*Condition of recursitvity, you use the function inside the function*/
chemin(X, Y):- connecte(X, Z), chemin(Z, Y).

/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : chemin(6,1).
 * The program will test every possibilty to find a way to go from 6 to
 * 1 with connecte
*/
