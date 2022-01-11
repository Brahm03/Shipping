import 'dart:io';

class shopping_cart {
  int? id;
  static Map<String, int> producID = {'Milk': 1, 'Choclate': 2};
  List<String> shipping_product = ['Milk', 'Choclate'];

  shopping_cart({this.id});

  

  add_product() {
    print("Enter product name: ");
    String? name = stdin.readLineSync() as String;
    producID[name] = producID.values.last + 1;
    shipping_product.add(name);

  }
  void remove(){
      print("Enter the id of product to remove from cart: ");
      String? name = stdin.readLineSync() as String;
      producID.remove(name);
      shipping_product.remove(name);
  }


  int i = 1;
  void checkout_shipping_product() {
    shipping_product.forEach((element) {
      print("$i $element");
      i++;
    });
  }

  shipping(int distance){
    if (distance < 100 && distance > 50){
      
    }
  }


}