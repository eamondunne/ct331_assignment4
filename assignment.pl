%Definitions for isElementInList(El, List)
isElementInList(El,[El|Rest]).
isElementInList(El,[DisregardHead|Tail]):-
          isElementInList(El,Tail).

%Definitions for mergeLists(List1, List2, Merged)
mergeLists([], List, List).
mergeLists([Head|Tail], List, [Head|Rest]):-
          mergeLists(Tail, List, Rest).

%Definitions for reverseList(List, ReversedList)
reverseList(L,R):- rev(L,R,[]).
rev([],Z,Z).
rev([H|T],Z,Acc) :-
      rev(T,Z,[H|Acc]).


%insertElementIntoListEnd(El, List, NewList)
insertElementIntoListEnd(El, List, NewList):-
  mergeLists(List,[El],NewList).
