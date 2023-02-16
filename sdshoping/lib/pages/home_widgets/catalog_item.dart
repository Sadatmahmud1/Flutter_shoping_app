import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import '../models/catalogue.dart';
import '../widgets/themes.dart';
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
               
               ElevatedButton(onPressed: (){},
               
               style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(
                context.canvasColor),
                shape: MaterialStateProperty.all(
                  const StadiumBorder()
                  ),
                ),
                child: "Buy".text.color(context.primaryColor).bold.make())
             ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).color(context.cardColor).rounded.square(140).make().py16();
  }
}


