import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'shipping_system.dart';
import 'shopping_cart.dart';

class Vendor extends System_of_shipping {
  int id_of_vendor;
  String vendor_name;

  List<String> workers = ['John', 'Sarah', 'Mohamed', 'Karl', 'Yusuf', 'Ajmal'];

  Vendor({required this.id_of_vendor, required this.vendor_name});

  static int benefit_from_products() {
    int tempe = 0;
    List<int> temp = [];
    for (var item in shopping_cart.producID_selling.entries) {
      for (var jtem in shopping_cart.producID_selling.entries) {
        tempe += jtem.value - item.value;
        temp.add(tempe);
      }
    }
    for (var values in temp) {
      if (values != 0) {
        tempe = values;
      }
    }
    return tempe;
  }

  see_asia() {
    int i = 1;
    System_of_shipping.asia.forEach((element) {
      print("$i - $element");
      i++;
    });
  }

  see_europe() {
    int i = 1;
    System_of_shipping.europe.forEach((element) {
      print("$i - $element");
      i++;
    });
  }
}

void main(List<String> args) {
  int id = Random().nextInt(1000);
  String v_name = stdin.readLineSync() as String;
  Vendor vendor = Vendor(id_of_vendor: id, vendor_name: v_name);

  print("""The Private 
  1- to See coming Prices|
  2- to See selling Prices|
  3- Benifit from Delivery
  4 - Befit from Products
  """);

  String choice = stdin.readLineSync() as String;

  switch (choice) {
    case '1':
      int i = 1;
      shopping_cart.producID_coming.forEach((key, value) {
        print("$i - $key | $value");
        i++;
      });
      break;
    case '2':
      int i = 1;
      shopping_cart.producID_selling.forEach((key, value) {
        print("$i - $key | $value");
        i++;
      });
      break;
    case '3':
      print("BENEFIT FROM DELIVERY :");
      print(System_of_shipping.benifit);
      break;
    case '4':
      print("Befit From Products >>>");
      print(Vendor.benefit_from_products());
      break;
    case '5':
      print(""" CONTINENTS WE DELIVER
      1 - ASIA
      2 - EUROPE
        """);

      String choice = stdin.readLineSync() as String;
      if (choice == '1') {
        vendor.see_asia();
      } else if (choice == '2') {
        vendor.see_europe();
      }
      break;
    default:
  }
}
