import 'package:flutter/material.dart';
import 'package:sdshoping/pages/widgets/themes.dart';
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
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  const _CartTotal({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          "\$999".text.xl4.bold.color(context.theme.canvasColor).make(),
          30.widthBox,
          ElevatedButton(onPressed: () {}, 
          style:ButtonStyle(
            backgroundColor: MaterialStateProperty.all(context.theme.canvasColor),
          ) ,
          child: "Buy".text.bold.color(context.cardColor).make(),
          ).w32(context)
        ],
      ),
    );
  }
}

class _CartList extends StatefulWidget {
  const _CartList({super.key});

  @override
  State<_CartList> createState() => __CartListState();
}

class __CartListState extends State<_CartList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      itemBuilder: (context, index) => ListTile(
        leading: const Icon(Icons.done),
        trailing: IconButton(
          
          icon: const Icon(Icons.remove_circle_outline),
          onPressed: (){},
          ),
          title: "Item 1".text.bold.color(context.canvasColor).make(),
      ),
    );
  }
}