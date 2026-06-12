Com:=[];
for i in [1..r1] do
Com[i]:=[];
if 10 in DivisorsInt(i) then Print("\n","i=",i,"\n");fi;
for x2 in [0..15] do
for x3 in [0..7] do
for x4 in [0..3] do
for x5 in [0..1] do
if x2+x3+x4+x5=i and x2+2*x3+4*x4+8*x5=r1
then Add(Com[i],[x2,x3,x4,x5]);fi;
od;od;od;od;od;
li:=List(Com,Size);
Print("\n","List(Com,Size)=",li,"\n");

