import 'dart:io';

void main() {
  List<int> liste = [];

  for (int i = 1; i <= 10; i++) {
    print("lütfen $i. sayiyi giriniz.");
    var sayi = stdin.readLineSync();

    if (sayi != null) {
      int number = int.parse(sayi);
      liste.add(number);
    }
  }
  print('Girilen sayılar: $liste');

  printCiftler(liste);
}

void printCiftler(List<int> liste) {
  List<int> ciftler = liste.where((sayi) => sayi % 2 == 0).toList();

  if (ciftler.isNotEmpty) {
    print('Çift Sayilar: $ciftler');
  } else {
    print("Listede Çift Sayı Yok!");
  }
}
