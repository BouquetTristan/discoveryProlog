/*Declaration of cool with yolanda*/
cool(yolanda).
/*Declaration of ecoute2LaMuisque with mia*/
ecoute2LaMusique(mia).

/*Condition : if cool(yolanda) is true then ecoute2LaMusique(yolanda) is it*/
ecoute2LaMusique(yolanda):- cool(yolanda).

/*More condition : All of them are true but you can try to erase one the declaration to see what can happen*/
joueAirGuitar(mia):- ecoute2LaMusique(mia).
joueAirGuitar(yolanda):- ecoute2LaMusique(yolanda).


/*      HOW TO USE THIS PROGRAM      */

/*
 * Command : joueAirGuitar(X).
 * By default you will have two answers : X = mia and X = yolanda
 * You can navigate with answers with the key ';'
*/

/*
 * Command : joueAirGuitar(mia).
 * This command will check if it is true or false, by default you will
 * have ; true.
*/
