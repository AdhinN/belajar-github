nilai(andi,'A').
harga(jeruk,25000).
umur(budi,17.5).
alamat(andi,"Jl. Durian 4 No. 7").
kelamin(budi, laki_laki).

%fakta
aplikasi(galaxys7,banyak).
penggunaan(galaxys7,fleksibel).

%role / aturan
so(X,android):-penggunaan(X,fleksibel),aplikasi(X,banyak).
so(X,ios):-penggunaan(X,mudah),aplikasi(X,berkualitas).