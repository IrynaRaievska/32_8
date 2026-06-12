Print("\n","Comb ",j,"\n");
Y[j]:=[];
Ncom:=[];
for i in [1..li[j]] do
Bi:=[Binomial(t1,Com[j][i][1]),Binomial(t2,Com[j][i][2]),Binomial(t3,Com[j][i][3]),Binomial(t4,Com[j][i][4])];
for i3 in [1..4] do
if Bi[i3]=0 then Bi[i3]:=1;fi;
od;
Add(Ncom,Product(Bi));
od;
Print("\n","NumComb=",Sum(Ncom),"\n");
for i in [1..li[j]] do
Bin:=[Binomial(t1,Com[j][i][1]),Binomial(t2,Com[j][i][2]),Binomial(t3,Com[j][i][3]),Binomial(t4,Com[j][i][4])];
dd:=[];
for k in [1..4] do
d:=Combinations(VV[k],Com[j][i][k]);
Add(dd,d);
od;
for x2 in dd[1] do
for x3 in dd[2] do
for x4 in dd[3] do
for x5 in dd[4] do
cc:=Union(Union(x2),Union(x3),Union(x4),Union(x5));
if Size(cc)=r1 then if Size(ImagesSet(map,Union(V7[w],cc)))=16 then 
if Size(SubsemigroupNC(Em,Union(V7[w],cc)))=16 then 
Add(Y[j],Union(V7[w],cc));fi;fi;fi;
od;od;od;od;od;
Print("\n","List(Y,Size)=",List(Y,Size),"\n");

