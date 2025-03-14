% our knowledge base consists of 4 families, the Foxes, the Browns, the Millers, and the Smiths

family(father(tom, fox, date(7, may, 1950), works(bbc, 15200)), mother(ann, fox, date(9, may, 1951), unemployed), children([child(pat, fox, date(5, may, 1973), unemployed), child(jim, fox, date(5, may, 1973), unemployed)])). 

family(father(bob, brown, date(12, august, 1972), works(nasa, 18900)), mother(stephanie, brown, date(24, december, 1972), works(target, 12500)), children([child(max, brown, date(1, february, 2000), unemployed), child(zack, brown, date(28, june, 2002), unemployed), child(sarah, brown, date(28, june, 2002), unemployed)])).

family(father(joel, miller, date(3, october, 1965), works(microsoft, 17800)), mother(melanie, miller, date(20, january, 1969), unemployed), children([child(ellie, miller, date(14, july, 2003), unemployed)])).

family(father(robert, smith, date(13, november, 1959), unemployed), mother(karen, smith, date(23, march, 1968), works(toyota, 21100)), children([child(tim, smith, date(19, february, 1998), works(walmart, 11000))])).

% the rule below finds all the wifes that work
wife(Firstname-Lastname) :- family(_, mother(Firstname, Lastname, _, works(_, _)), _). % finds all the wifes that work

% the below 2 rules collectively find all the unemployed parents born prior to 1963
exists(Firstname-Lastname) :- family(father(Firstname, Lastname, date(_, _, Year), unemployed), _, _), Year < 1963. % finds the unemployed fathers born prior to 1963
exists(Firstname-Lastname) :- family(_, mother(Firstname, Lastname, date(_, _, Year), unemployed), _), Year < 1963. % finds the unemployed mothers born prior to 1963

% alternative "wife" rule that finds all the wives that work
wife2(_) :- family(_, mother(Firstname, Lastname, _, works(_, _)), _), write(Firstname), nl, write(Lastname), nl.