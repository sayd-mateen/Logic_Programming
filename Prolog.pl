/* Sayd Mateen
   Lab Three
   CSC 135 */


lastElement([X],X).
lastElement([X|Y],Z) :- lastElement[Y,Z].

/*-----------------------------------Question_1-----------------------------------------*/


catowner(kittyOne, scott).
catowner(kittyTwo, gale).
catparent(parent, kittyOne).
catparent(parent, kittyTwo).
catSiblings(A, B) :- catowner(X, A), catowner(Y, B), catparent(P,X), catparent(P, Y). 


/*-----------------------------------Question_2-----------------------------------------*/


listMins([], X, X). 
listMins([W|X], [Y|Z], [W|R]) :- W =< Y, listMins(X, Z, R),!. 
listMins([W|X], [Y|Z], [Y|R]) :- Y < W, listMins(X, Z, R),!. 


/*-----------------------------------Question_3-----------------------------------------*/

num(0).
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).

crypto(P,H,A,R,E,D,L,I,O,S) :- 	num(P), P \= 0, num(H), H \= 0, num(A), A \= 0, num(D), D \= 0, num(I), I \= 0, num(S), S \= 0, num(R), num(E), num(L), num(O),
P \= H, P \= A, P \= R, P \= E, P \= D, P \= L, P \= I, P \= O, P \= S,
H \= A, H \= R, H \= E, H \= D, H \= L, H \= I, H \= O, H \= S,
A \= R, A \= E, A \= D, A \= L, A \= I, A \= O, A \= S,
R \= E, R \= D, R \= L, R \= I, R \= O, R \= S,
E \= D, E \= L, E \= I, E \= O, E \= S,
D \= L, D \= I, D \= O, D \= S, 
L \= I, L \= O, L \= S, 
I \= O, I \= S,
O \= S, 
Test1 is ((P*10000)+(H*1000)+(A*100)+(R*10)+(E)), 
Ts1 is (P*I*(P*10+A)*(R*10+A)),
Test1 = Ts1,
Test2 is ((D*10000)+(E*1000)+(L*100)+(A*10)+(I)),
Ts2 is ((S*10+H)*((O*1000)+(E*100)+(O*10)+A)),
Test2 = Ts2,
Test3 is ((A*10000)+(L*1000)+(O*100)+(R*10)+(S)),
Ts3 is (H*(S*10+S)*(E*10+S)*(O*10+I)),
Test3 = Ts3.




/*-----------------------------------Question_4-----------------------------------------*/


cat(natasha, [3, 7, 14, 2]).
cat(prowler, [6, 6, 15, 2]).
catFriends(Cat1, Cat2) :- 	cat(Cat1, [A1, W1, N1, J1]), cat(Cat2, [A2, W2, N2, J2]), abs(A1-A2) < 6, abs(W1-W2) < 3, compatible(N1, N2, J1, J2).
compatible(N1, N2, J1, J2) :- abs(N1-N2) < 4, !.
compatible(N1, N2, J1, J2) :- abs(J1-J2) < 2, !.


/*-----------------------------------Question_5-----------------------------------------*/


member(M, [M | _]).
member(M, [_ | T]) :- member(M, T).
overlap2(X, Y) :-  dif(A, B), member(A, X), member(A, Y), member(B, X), member(B, Y).

