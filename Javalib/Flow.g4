grammar Flow;
a : 'START' s ;
s : e * ;
e : 'NUM' V '=' B  ';' | V '=' f ';' | 'IF' '(' w ')' '{' s '}' 'ELSE' '{' s '}' | 'OUTPUT' V ';' | 'STOP';
w : V c V | V c B ;
c : '==' | '<=' | '>=' | '!=' ;
f : V O f | V O B | V O V | B O V | B O f | B ;
V : [a-z] [a-z 0-9]+ ;
A : [a-z]+ ;
B : [0-9]+ ;
O : '+' | '-' | '*' | '/' ;
WS : [ \t\r\n]+ -> skip ;