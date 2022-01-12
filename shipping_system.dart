import 'dart:io';

import 'customer.dart';
import 'shopping_cart.dart';

class System_of_shipping extends shopping_cart {
  static int benifit = 0;

  static final List<String> asia = [
    'China',
    'India',
    'Indonesia',
    'Pakistan',
    'Bangladesh',
    'Japan',
    'Philippines',
    'Vietnam',
    'Turkey',
    'Iran',
    'THailand',
    'Myanmar',
    'Shouth Korea',
    'Iraq',
    'Afghanistan',
    'Sudia Arabia',
    'Uzbekistan',
    'Malaysia',
    'Yemen',
    'Nepal',
    'North Korea',
    'Sri Lanka',
    'Kazakhstan',
    'Syria',
    'Cambodia',
    'Jordan',
    'Azarbajan',
    'United Arab Emirates',
    'Tajikistan',
    'State of Palestine'
  ];
  static final List<String> europe = [
    'Russia',
    'Germany',
    'United Kingdom',
    'France',
    'Italy',
    'Spain',
    'Ukrain',
    'Poland',
    'Romania',
    'Netherlands',
    'Belgium',
    'Czech Republic',
    'Greec',
    'Partogal'
  ];

   distance_checker(String default_ship) async {
    for (var item in asia) {
      if (default_ship == item) {
        benifit += 20000 * 1;
        print("Your product is on the way to $default_ship Asia");
        for (var i = 0; i < 5; i++) {
          await Future.delayed(Duration(seconds: i), () {
            stdout.write('.');
          });

          print("The produects has been delivered to $default_ship");
          print("Enter 1 to see all products you have sent");
          String one = stdin.readLineSync() as String;
          try {
            if (one == '1') {
              int i = 1;
              shopping_cart.shipping_product.forEach((element) {
                print("$i - $element");
              });
            }
          } catch (e) {
            print(e);
          }
        }
        break;
      }
    }
    for (var item in europe) {
      if (default_ship == item) {
        benifit += 20000 * 2;
        print("Your product is on the way to $default_ship Europe");
        for (var i = 0; i < 5; i++) {
          await Future.delayed(Duration(seconds: i));
          stdout.write('.');
          print("The produects has been delivered to $default_ship");
          print("Enter 1 to see all products you have sent");
          String one = stdin.readLineSync() as String;
          try {
            if (one == '1') {
              int i = 1;
              shopping_cart.shipping_product.forEach((element) {
                print("$i - $element");
              });
            }
          } catch (e) {
            print(e);
          }
        }
        break;
      }
    }
  }
}
