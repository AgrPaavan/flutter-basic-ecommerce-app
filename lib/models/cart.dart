import 'package:basic_ecommerce_app/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordan 3 Retro',
      price: '\$240',
      imagePath: 'lib/assets/images/AirJordan3Retro.png',
      description: 'AJ3 returns with all of its classic style and grace.',
    ),
    Shoe(
      name: 'Air Jordan 4 RM',
      price: '\$150',
      imagePath: 'lib/assets/images/AirJordan4RM.png',
      description: 'These sneakers reimagine the AJ4 for life on the go.',
    ),
    Shoe(
      name: 'GT Cut 3 EP',
      price: '\$144',
      imagePath: 'lib/assets/images/GTCut3Ep.png',
      description: 'Designed to help you create space for backdoor cuts.',
    ),
    Shoe(
      name: 'KD Trey 5 X EP',
      price: '\$101',
      imagePath: 'lib/assets/images/KDTrey5XEp.jpeg',
      description: 'KD Trey 5 X can help you float like KD.',
    ),
    Shoe(
      name: 'Kyrie 7 Special FX',
      price: '\$137',
      imagePath: 'lib/assets/images/Kyrie7Special.jpg',
      description: 'Homage to Kyrie\'s love for film-making.',
    ),
  ];

  List<Shoe> userCart = [];

  List<Shoe> getShoeList() {
    return shoeShop;
  }

  List<Shoe> getUserCart() {
    return userCart;
  }

  void addToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  void removeFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
