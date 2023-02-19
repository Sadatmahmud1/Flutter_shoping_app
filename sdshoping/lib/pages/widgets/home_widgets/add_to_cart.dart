import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../models/cart.dart';
import '../../models/catalogue.dart';

class AddtoCart extends StatefulWidget {
  final Item catalog;
  const AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<AddtoCart> {
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    bool isInCart = _cart.items.contains(widget.catalog);
    return ElevatedButton(
     onPressed: (){
      if (!isInCart) {
      isInCart = isInCart.toggle();
     final catalog = CatalogModel();
  
     _cart.catalog = catalog;
     _cart.add(widget.catalog);
  
  setState(() { });
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