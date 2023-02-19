import 'package:flutter/material.dart';
import 'package:sdshoping/pages/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Center(child: "Cart".text.color(context.canvasColor).make()),
      ),
      body: Column(
        children: [
          _CartList().p32().expand(),
          const Divider(),
          const _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  
  const _CartTotal();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          "৳${CartModel().totalPrice}".text.xl4.bold.color(context.theme.canvasColor).make(),
          30.widthBox,
          ElevatedButton(
            onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: "BUYING IS NOT SUPPORTATED".text.make()
              ));
            },
            
            child: "Buy".text.bold.make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatelessWidget{
  final _cart = CartModel();
  @override
  Widget build(BuildContext context) {
    if (_cart.items.isEmpty) {
      return "Nothing to show".text.xl4.color(context.canvasColor).makeCentered();
    } else {
      return ListView.builder(
      itemCount:_cart.items.length,
      itemBuilder: (context, index) => ListTile(
       
        leading: const Icon(Icons.done),
        trailing: IconButton(
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: () {
            _cart.remove(_cart.items[index]);
            // setState(() {});
          },
        ),
        title: Text(_cart.items[index].name),
      ),
    );
    } 
  }
}
