wanita(anita).
suka(angga,renang).
suka(angga,tenis).
suka(tino,apel).
suka(yuli,Sesuatu):-suka(tino,Sesuatu).
jingga(jeruk).

ayah(slamet,amin).
ayah(amin,badu).
ayah(slamet,anang).
ayah(amin,budi).
ayah(anang,didi).
ayah(anang,dadi).

kakak(amin,anang).
kakak(badu,budi).
kakak(dadi,didi).

% A\=B : biar A tidak sama dengan B.
adik(A,B):-kakak(B,A).
kakek(A,B):-ayah(A,C),ayah(C,B).
paman(A,B):-ayah(C,B),adik(A,C).
pakde(A,B):-ayah(C,B),kakak(A,C).
saudara(A,B):-ayah(C,A),ayah(C,B),A\=B. 
sepupu(A,B):-saudara(C,D),ayah(C,A),ayah(D,B),A\=B.
keponakan(A,B):-pakde(B,A) ; paman(B,A).
