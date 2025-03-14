male(panos). % male/1, 1st arg is male person
male(jim).
male(antonis).
male(george).
male(spilios).
male(panagiotis).
male(demetres).

female(depy). % female/1, 1st arg is female person
female(sofia).
female(toula).
female(xara).
female(xrysa).

father(antonis, panos). % father/2, 1st arg is father, 2nd arg is child
father(george, jim).
father(panagiotis, antonis).
father(spilios, depy).
father(spilios, sofia).
father(demetres, george).

mother(depy, panos). % mother/2, 1st arg is mother, 2nd arg is child
mother(sofia, jim).
mother(toula, depy).
mother(toula, sofia).
mother(xara, antonis).
mother(xrysa, george).

parents(antonis, depy, panos). % parents/3, 1st arg is father, 2nd arg is mother, 3rd arg is child
parents(george, sofia, jim).
parents(panagiotis, xara, antonis).
parents(spilios, toula, depy).
parents(spilios, toula, sofia).
parents(demetres, xrysa, george).
