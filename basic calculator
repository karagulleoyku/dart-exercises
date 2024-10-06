import 'dart:io';

void main() {
  print("ilk sayiyi gir");
  var sayi1 = int.parse(stdin.readLineSync()!);

  print("ikinci sayiyi gir");
  var sayi2 = int.parse(stdin.readLineSync()!);

  print("işlem türünü gir '+ - x /' ");
  var islem = stdin.readLineSync();

  switch (islem) {
    case "+":
      print("sonuc:${sayi1 + sayi2}");
      break;
    case "-":
      print("sonuc:${sayi1 - sayi2}");
      break;
    case "x":
      print("sonuc:${sayi1 * sayi2}");
      break;
    case "/":
      if (sayi2 == 0) {
        print("bir sayıyı 0'a bölemezsiniz!");
      } else {
        print("sonuc:${sayi1 / sayi2}");
      }
      break;
    default:
      print("geçersiz işlem!");
  }
}
