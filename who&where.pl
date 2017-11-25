/*Find who are where*/

/*Declaration of board of data
 * You have 5 data in each board
 * _ means you can have any data
 * I already place 'norvegian' and 'lait' on board
 * because it is someting we already know
*/
lc([_, _, _, _, _]).
ln([norvegien, _, _, _, _]).
lb([_, _, lait, _, _]).
la([_, _, _, _, _]).
lp([_, _, _, _, _]).

/*Declaration of the function meme_maison
 * I check if the data are on the sameplace on a different board
 * Return true or false
*/
meme_maison(X, [X|_], Y, [Y|_]).
meme_maison(X, [_|Q], Y, [_|S]):- meme_maison(X, Q, Y, S).

/*Declaration of the function maison_a_cote
 * I check if the data are on the same board, at the right or the left
 * Return true or false
*/
maison_a_cote(X, [X|_], Y, [_,Y|_]).
maison_a_cote(X, [_,X|_], Y, [Y|_]).
maison_a_cote(X, [_|Q], Y, [_|S]):- maison_a_cote(X, Q, Y, S).

/*Declaration of the function maison_a_droite
 * I check if the data is at the right of the position in another board
 * Return true or false
*/
maison_a_droite(X, Y, [X,Y|_]).
maison_a_droite(X, Y, [_|Q]):- maison_a_droite(X, Y, Q).

/*This function use all definitions given and try to find where is the zebra and who drink wine*/
whoNdWhere(C, N, B, A, P, PossZebre, BoitVin):-
						lc(C),ln(N), lb(B), la(A), lp(P),
						meme_maison(anglais, N, rouge, C),
						meme_maison(espagnol, N, chien, A),
						meme_maison(japonais, N, peintre, P),
						meme_maison(italien, N, the, B),
						meme_maison(vert, C, cafe, B),
						maison_a_droite(blanc, vert, C),
						meme_maison(sculpteur, P, escargot, A),
						meme_maison(diplomate, P, jaune, C),
						maison_a_cote(norvegien, N, bleu, C),
						meme_maison(violoniste, P, jus_de_fruit, B),
						maison_a_cote(medecin, P, renard, A),
						maison_a_cote(diplomate, P, cheval, A),
						
						meme_maison(PossZebre, N, zebre, A),
						meme_maison(BoitVin, N, vin, B).


/*     HOW TO USE THIS PROGRAM     */

/*
 * Command : whoNdWhere(Color, Nationality, Drink, Pet, Work, Zebra, Wine).
 * The program will test every possibilty to put everyone in boards 
 * and respect all conditions and tell us where is zebra and wine
*/