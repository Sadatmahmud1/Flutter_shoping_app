// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:sdshoping/pages/models/cart.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalogue.dart';
import 'catalog_image.dart';

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(
            image: catalog.image,
          ),
        ),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(context.canvasColor).bold.make(),
            catalog.desc.text.color(context.canvasColor).textStyle(context.captionStyle).make(),
            15.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
             children: [
               "৳${catalog.price}".text.color(context.canvasColor).bold.xl.make(),
               
               _AddtoCart(catalog: catalog)
             ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).color(context.cardColor).rounded.square(140).make().py16();
  }
}

class _AddtoCart extends StatefulWidget {
  final Item catalog;
  const _AddtoCart({
    Key? key,
    required this.catalog,
  }) : super(key: key);

  @override
  State<_AddtoCart> createState() => _AddtoCartState();
}

class _AddtoCartState extends State<_AddtoCart> {
   bool isAdded = false;
  @override
  Widget build(BuildContext context) {
   
    return ElevatedButton(
     onPressed: (){
      isAdded = isAdded.toggle();
      
      final _catalog = CatalogModel();
      final _cart = CartModel();
      _cart.catalog = _catalog;
      _cart.add(widget.catalog);
      
      setState(() { });
     },
    
     style: ButtonStyle(
          
     shape: MaterialStateProperty.all(
       const StadiumBorder()
       ),
     ),
     child: isAdded ? Icon(Icons.done): "Add to cart".text.bold.make()
     );
  }
}


