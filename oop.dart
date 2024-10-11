import 'dart:io';

class Ogrenci {
  String? ad;
  String? soyad;
  List<double> notlar = [];

  void bilgileriAl() {
    print("adınızı girin:");
    ad = stdin.readLineSync();
    print("soyadınızı girin:");
    soyad = stdin.readLineSync();
  }

  void notEkle(double not) {
    notlar.add(not);
  }

  double ortalamaHesapla() {
    if (notlar.isEmpty) {
      print("Henüz not girilmedi.");
      return 0;
    }
    double toplam = 0;
    for (var not in notlar) {
      toplam += not;
    }
    return toplam / notlar.length;
  }
}

void main() {
  Ogrenci ogrenci = Ogrenci();
  ogrenci.bilgileriAl();

  while (true) {
    print("Bir not girin (Çıkmak içiN -1 yazın):");
    double not = double.parse(stdin.readLineSync()!);
    if (not == -1) break;
    ogrenci.notEkle(not);
  }

  double ortalama = ogrenci.ortalamaHesapla();
  print("Not ortalamanız: $ortalama");
}
