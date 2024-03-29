printlaptop(H):-
    brand(H,A),
    model(H,B),
    price(H,R),
    write(H),write(' -> '),
    write(A), write(' '),
    write(B),write(' (Rs.'),
    write(R),write(')'),nl.

check([],_,[]).

check([H|T],S,[H|Result]) :-
    S=:=1,
    isgaming(H),
	printlaptop(H),
    check(T,S,Result).

check([H|T],S,[H|Result]) :-
    S=:=2,
    isdev(H),
    printlaptop(H),
    check(T,S,Result).

check([H|T],S,[H|Result]) :-
    S=:=3,
    isclerk(H),
    printlaptop(H),
    check(T,S,Result).

check([H|T],S,[H|Result]) :-
    S=:=4,
    ishome(H),
    printlaptop(H),
    check(T,S,Result).

check([_|T],S,Result) :-
    check(T,S,Result).


test() :-
    write('Select the type of laptop: \n1 for Gaming Laptop \n2 for Development Laptop \n3 for Basic Laptop \n4 for Business Laptop '),
    nl,
    read(B),
    integer(B),
    write('Enter the maximum price range for your laptop '),
    nl,
    read(P),
    integer(P),
    P>0,
    input(P,L),
	bubble_sort(L,X),
    %numlist(1,168,L),
	check(X,B,_).






