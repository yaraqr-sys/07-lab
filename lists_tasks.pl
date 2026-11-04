% Delete all occurrences of an element from a list

deleteElement(_, [], []).

deleteElement(X, [X|T], Result) :-
    deleteElement(X, T, Result).

deleteElement(X, [H|T], [H|Result]) :-
    X \= H,
    deleteElement(X, T, Result).
