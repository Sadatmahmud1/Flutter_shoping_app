import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'package:flutter/material.dart';
import 'package:sdshoping/pages/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'models/catalogue.dart';

// ignore: camel_case_types
class homeDetailPage extends StatelessWidget {
  final Item catalog;
  const homeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.cream,
      bottomNavigationBar: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
             children: [
               "৳${catalog.price}".text.bold.xl4.color(Colors.black).make(),
               
               ElevatedButton(onPressed: (){},
               
               style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
               backgroundColor: MaterialStateProperty.all(MyTheme.darkBluishColor),
                shape: MaterialStateProperty.all(
                  const StadiumBorder()
                  ),
                ),
                child: "Buy".text.xl2.bold.make()).w24(context)
             ],
            ).p20(),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context),
            Expanded(
              child: VxArc(
                height: 30.0,
                arcType: VxArcType.CONVEY,
                edge: VxEdge.TOP,
                child: Container(
                  color:Colors.white,
                  width: context.screenWidth,
                  child: Column(children: [
                    catalog.name.text.xl4
                        .color(MyTheme.darkBluishColor)
                        .bold
                        .make(),
                    catalog.desc.text.xl2.textStyle(context.captionStyle).make(),
                    15.heightBox,
                  ]).py64(),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
