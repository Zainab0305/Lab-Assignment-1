male(adnan).
male(hashim).
male(mohammad).
male(ali).
male(yousif).

female(ghalia).
female(fatimah).
female(zainab).
female(ghala).
female(kawthar).
female(zahra).

parent(adnan, hashim).
parent(adnan, mohammad).
parent(adnan, ali).
parent(adnan, fatimah).
parent(adnan, zainab).
parent(ghalia, hashim).
parent(ghalia, mohammad).
parent(ghalia, ali).
parent(ghalia, fatimah).
parent(ghalia, zainab).
parent(fatimah, ghala).
parent(fatimah, kawthar).
parent(fatimah, yousif).
parent(fatimah, zahra).

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X \= Y.
brother(X, Y) :- male(X), parent(P, X), parent(P, Y), X \= Y.




