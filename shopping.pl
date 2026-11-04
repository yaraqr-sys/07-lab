display_list([]).

display_list([H|T]) :-
    write(H), nl,
    display_list(T).

add(X, L, [X|L]).

shopping :-
    Basket = [coffee, milk, chocolate, apple, juice],
    menu(Basket).

menu(Basket) :-
    nl,
    write('** SHOPPING LIST **'), nl,
    write('d. display all items.'), nl,
    write('a. Add an item to the list.'), nl,
    write('e. exit.'), nl,
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    process(Choice, Basket).

process(d, Basket) :-
    display_list(Basket),
    menu(Basket).

process(a, Basket) :-
    write('Enter the item you want to add: '),
    read(Item),
    add(Item, Basket, NewBasket),
    write('The item has been added.'), nl,
    menu(NewBasket).

process(e, _) :-
    write('Goodbye!').

process(_, Basket) :-
    write('Invalid choice!'), nl,
    menu(Basket).
