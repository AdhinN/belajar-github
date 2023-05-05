%fakta
lulusan(joni,universitas).
wn(joni,indonesia).
lahir(joni,1941).
tahun_daftar(joni,1985).
tahun_sekarang(2014).

%rule
umur_sekarang(X,Usia):-lahir(X,Thn),tahun_sekarang(Y),Usia is Y-Thn.
umur_daftar(X,Usia):-lahir(X,Thn),tahun_daftar(X,Y), Usia is Y-Thn.
daftar_pns(X):-wn(X,indonesia),lulusan(X,sma),umur_daftar(X,Usia), Usia<35, Usia>17.
daftar_pns(X):-wn(X,indonesia),lulusan(X,universitas),umur_daftar(X,Usia), Usia>17.
pensiun(X):-daftar_pns(X), umur_sekarang(X,Usia), Usia>59.