import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalogue.dart';

class AddtoCart extends StatelessWidget {
  final Item catalog;
 AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(catalog);
    return ElevatedButton(
     onPressed: (){
     if (!isInCart) {
          isInCart = isInCart.toggle();
          // ignore: no_leading_underscores_for_local_identifiers
          final _catalog = CatalogModel();

          _cart.catalog = _catalog;
          _cart.add(catalog);
          // setState(() {});
        }
     },
    
     style: ButtonStyle(
          
     shape: MaterialStateProperty.all(
       const StadiumBorder()
       ),
     ),
     child: isInCart ? const Icon(Icons.done): const Icon(CupertinoIcons.cart_badge_plus)
     );
  }
}