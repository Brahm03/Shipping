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

  Function distance_checker = (String default_ship) {
    for (var item in asia) {
      for (var jitem in europe) {
        if (default_ship == item) {
          benifit += 20000 * 1;
          print("Your product is on the way to $default_ship Asia");
          break;
        } else if (default_ship == jitem) {
              benifit += 20000 * 2;
              print("Your product is on the way to $default_ship Europe");
              break;
        }
      }
    }
  };
}
