common_list([H|_], X) :- double_loop(H, X). % checks if first element of first list exists in second list with custom predicate
common_list([_|T], X) :- common_list(T, X). % shortens first list by one
double_loop(Y, [Y|_]). % checks if element is first element of list
double_loop(Y, [_|T]) :- double_loop(Y, T). % shortens list by one