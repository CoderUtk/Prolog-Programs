domains
 list=symbol* 

predicates
 rev(list,list,list) 
 rev_list(list,list) 

clauses
 rev_list(IPList,OPList):-
  rev(IPList,[],OPList), 
  rev([],IPList,OPList).

 rev([X|Tail],IPList,OPList):-
  rev(Tail,[X|IPList],OPList).
 
 write(OPList,",").
