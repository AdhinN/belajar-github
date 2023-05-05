pria(jarwo).
pria(denis).
pria(adit).
pria(ehsan).
pria(zoro).
pria(fizi).
pria(yusuf).
wanita(elisa).
wanita(gracia).
wanita(shani).
wanita(freya).
wanita(susanti).
wanita(ella).
wanita(zara).

ortu(elisa,adit).
ortu(jarwo,adit).
ortu(elisa,gracia).
ortu(jarwo,gracia).
ortu(elisa,freya).
ortu(jarwo,freya).
ortu(gracia,susanti).
ortu(denis,susanti).
ortu(shani,zoro).
ortu(adit,zoro).
ortu(shani,zara).
ortu(adit,zara).
ortu(freya,fizi).
ortu(ehsan,fizi).
ortu(ella,yusuf).
ortu(zoro,yusuf).

kakak(gracia,adit).
kakak(gracia,freya).
kakak(adit,freya).
kakak(zoro,zara).

suami(jarwo,elisa).
suami(denis,gracia).
suami(adit,shani).
suami(ehsan,freya).
suami(zoro,ella).


anak(X,Y):-ortu(Y,X).
ayah(X,Y):-ortu(X,Y),pria(X).
ibu(X,Y):-ortu(X,Y),wanita(X).
adik(X,Y):-kakak(Y,X).
istri(X,Y):-suami(Y,X).

kakek(X,Y):-ortu(Z,Y),ortu(X,Z),pria(X).
nenek(X,Y):-ortu(Z,Y),ortu(X,Z),wanita(X).
buyut(X,Y):-ortu(Z,Y),ortu(A,Z),ortu(X,A).

mertua(X,Y):-(istri(Y,Z),ortu(X,Z)) ; (suami(Y,Z),ortu(X,Z)).
adikipar(X,Y):-((suami(X,Z);istri(X,Z)),kakak(Y,Z)) ; ((suami(X,Z);istri(X,Z)),(suami(Y,A);istri(Y,A)),kakak(A,Z)) ; ((suami(Y,Z);istri(Y,Z)),kakak(Z,X)).
kakakipar(X,Y):-((suami(X,Z);istri(X,Z)),adik(Y,Z)) ; ((suami(X,Z);istri(X,Z)),(suami(Y,A);istri(Y,A)),adik(A,Z)) ; ((suami(Y,Z);istri(Y,Z)),adik(Z,X)).

keponakan(X,Y):-((kakak(Y,Z);adik(Y,Z)),ortu(Z,X)) ; (((kakak(A,Z);adik(A,Z)),(suami(Y,A);istri(Y,A))),ortu(Z,X)) ; ((istri(X,A);suami(X,A)),ortu(Z,A),(kakak(Y,Z);adik(Y,Z))) ; ((istri(X,A);suami(X,A)),ortu(Z,A),((kakak(B,Z);adik(B,Z)),(suami(Y,B);istri(Y,B)))) ; (ortu(Z,X),ortu(A,Z),(kakak(B,A);adik(B,A)),ortu(B,Y)).
bude(X,Y):-(wanita(X),kakak(X,Z),ortu(Z,Y)) ; (istri(X,A),kakak(A,Z),ortu(Z,Y)) ; ((suami(Y,A);istri(Y,A)),ortu(Z,A),kakak(X,Z),wanita(X)) ; (wanita(X),ortu(Z,Y),ortu(A,Z),kakak(B,A),ortu(B,X)).
pakde(X,Y):-(pria(X),kakak(X,Z),ortu(Z,Y)) ; (suami(X,A),kakak(A,Z),ortu(Z,Y)) ; ((suami(Y,A);istri(Y,A)),ortu(Z,A),kakak(B,Z),(suami(B,X);istri(B,X)),pria(X)) ; (pria(X),ortu(Z,Y),ortu(A,Z),kakak(B,A),ortu(B,X)).
bulik(X,Y):-(wanita(X),adik(X,Z),ortu(Z,Y)) ; (istri(X,A),adik(A,Z),ortu(Z,Y)) ; ((suami(Y,A);istri(Y,A)),ortu(Z,A),adik(X,Z),wanita(X)) ; (wanita(X),ortu(Z,Y),ortu(A,Z),adik(B,A),ortu(B,X)).
paklik(X,Y):-(pria(X),adik(X,Z),ortu(Z,Y)) ; (suami(X,A),adik(A,Z),ortu(Z,Y)) ; ((suami(Y,A);istri(Y,A)),ortu(Z,A),adik(B,Z),(suami(B,X);istri(B,X)),pria(X)) ; (pria(X),ortu(Z,Y),ortu(A,Z),adik(B,A),ortu(B,X)).
