import 'dart:io';

import 'customer.dart';
import 'shipping_system.dart';
import 'shopping_cart.dart';

void main(List<String> args) {
  System_of_shipping sytem = System_of_shipping();

  print("""WELCOME TO DHL""");
  print("____________________");
  print("Enter your name: ");
  String name_of_user = stdin.readLineSync() as String;
  print("Enter your current location: ");
  String current_location = stdin.readLineSync() as String;
  print("Enter your shipping Country: ");
  String shipping_place = stdin.readLineSync() as String;

  Customer name = Customer(
      id_for_customer: 1,
      name: name_of_user,
      billingAdress: current_location,
      defaultShipping: shipping_place);

  while (true) {
    print('\n');
    print("""
    1 - TO see all product we have
    2 - To add to you bucket
    3 - To remove the product from your bucket
    4 - commit the procces to be shipped to $shipping_place
        """);

    String choice = stdin.readLineSync() as String;

    switch (choice) {
      case '1':
        name.checkout();
        break;
      case '2':
        name.add_product();
        break;
      case '3':
        name.remove();
        break;
      case '4':
        sytem.distance_checker(shipping_place);
        break;
    }
  }
}
