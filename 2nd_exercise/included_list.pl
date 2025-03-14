included_list(X, Y) :-  length(X, S), S =\= 0, safe_included_list(X, Y). % if the first list is empty, start the recursion
safe_included_list([], _). % exit clause of the recursion
safe_included_list([Head|Tail], X) :- member(Head, X), safe_included_list(Tail, X). % recursive case