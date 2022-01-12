import 'dart:io';

import 'customer.dart';

class shopping_cart {
  int? id;

  static Map<String, int> producID_coming = {'Milk': 3000, 'Choclate': 5000};

  static Map<String, int> producID_selling = {'Milk': 3500, 'Choclate': 5500};

  static List<String> shipping_product = [];

  shopping_cart({this.id});

  add_product() {
    print("Enter product id to add to your bucket: ");
    String? name = stdin.readLineSync() as String;
    producID_selling.forEach((key, value) {
      if (name == key) {
        if (Customer.money < value) {
          print("You do not have enough money Sorry");
        } else if (Customer.money > value) {
          shipping_product.add(name);
          Customer.money -= value;
        }
      }
    });
  }

  void remove() {
    print("Enter the id of product to remove from cart: ");
    String? name = stdin.readLineSync() as String;

    producID_selling.forEach((key, value) {
      if (name == key) {
        shipping_product.remove(name);
      } else {
        print("we do not have such kind of product");
      }
    });
  }

  int i = 1;
  void checkout_shipping_product() {
    shipping_product.forEach((element) {
      print("$i $element");
      i++;
    });
  }
}
