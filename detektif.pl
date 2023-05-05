%fakta
wn(joni,indonesia).
wn(frank,australia).
wn(mike,australia).
wn(alex,australia).
senjata(pistol).
jual(joni,pistol,frank).
jual(joni,pistol,mike).
jual(joni,pistol,alex).

%rule
transaksi(X,Y):-jual(X,Y,Z), senjata(Y).
punya(X,Y):-transaksi(X,Y),senjata(Y).
penjahat(X):-wn(X,indonesia), punya(X,Y), senjata(Y).