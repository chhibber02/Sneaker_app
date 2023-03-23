import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Air Jordans',
      imagePath: 'lib/images/AirJordans.webp',
      description: 'You\'ve got the hops and the speed—lace up in shoes that '
                    'enhance what you bring to the court',
      price: '236',
    ),

    Shoe(
      name: 'Jordan Why Not',
      imagePath: 'lib/images/Jordans.webp',
      description: 'Russell Westbrook\'s 6th signature shoe is—you guessed'
                    ' it—all about speed.',
      price: '200',
    ),

    Shoe(
      name: 'Kyrie Low 5',
      imagePath: 'lib/images/Kyrie.webp',
      description: 'Kyrie twists defenders into knots using his footwork and ball handling, creating the space he needs to make the play.',
      price: '220',
    ),

    Shoe(
      name: 'LeBron Witness 7',
      imagePath: 'lib/images/LeBrons.webp',
      description: 'Cool fkin shoes. What else do you need?',
      price: '250',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart () {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }


}