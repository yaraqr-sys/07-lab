% Delete all occurrences of an element from a list

deleteElement(_, [], []).

deleteElement(X, [X|T], Result) :-
    deleteElement(X, T, Result).

deleteElement(X, [H|T], [H|Result]) :-
    X \= H,
    deleteElement(X, T, Result).

% Add an element at the end of a list

add_at_the_end(X, [], [X]).

add_at_the_end(X, [H|T], [H|Result]) :-
    add_at_the_end(X, T, Result).