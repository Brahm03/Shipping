import 'shopping_cart.dart';

class Customer extends shopping_cart {
  final String name;
  final String billingAdress;
  final String defaultShipping;
  int id_for_customer;
  static int money = 1000;

  Customer(
      {required this.id_for_customer,
      required this.name,
      required this.billingAdress,
      required this.defaultShipping})
      : super(id: id_for_customer);

  void checkout() {
    shopping_cart.producID_selling.forEach((key, value) {
      print("$key | $value");
    });
  }
}
