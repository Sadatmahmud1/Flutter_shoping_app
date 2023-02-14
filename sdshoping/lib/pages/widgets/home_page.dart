import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:sdshoping/pages/models/catalogue.dart';
import 'package:sdshoping/pages/widgets/drawer.dart';
import 'package:sdshoping/pages/widgets/item_widget.dart';
import 'package:sdshoping/pages/widgets/item_widget.dart';
import 'package:flutter/src/services/asset_bundle.dart';
import 'package:sdshoping/pages/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "sadat";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    await Future.delayed(Duration(seconds: 2));
    final catalogueJson =
        await rootBundle.loadString("assets/files/catalogue.json");
    // print(catalogueJson);

    //decoding json string into another format(map)
    final decodedData = jsonDecode(catalogueJson);
    // print(decodedData);
    // if we have a map and we want to convert it to string -> jsonEncode()

    var productsData = decodedData["products"];
    // print(productsData);

    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.cream,
      body: SafeArea(
          child: Container(
        padding: Vx.m32,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CatalogHeader(),
          if (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            CatalogList().expand()
          else
            Center(
              child: CircularProgressIndicator(),
            )
        ]),
      )),
    );
  }
}

class CatalogHeader extends StatelessWidget {
  const CatalogHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.darkBluishColor).make(),
        "Tranding product".text.xl2.make()
      ],
    );
  }
}

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index) {
        final catalog = CatalogModel.items[index];
        return CatalogItem(catalog: catalog);
      },
    );
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog})
      : assert(catalog != null);
  @override
  Widget build(BuildContext context) {
    return VxBox(
        child: Row(
      children: [
        CatalogImage(image: catalog.image,
        ),
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            catalog.name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
            catalog.desc.text.textStyle(context.captionStyle).make(),
            15.heightBox,
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
             children: [
               "\৳${catalog.price}".text.bold.xl.make(),
               
               ElevatedButton(onPressed: (){},
               
               style: ButtonStyle(
               backgroundColor: MaterialStateProperty.all(
                MyTheme.darkBluishColor),
                shape: MaterialStateProperty.all(
                  StadiumBorder()
                  ),
                ),
                child: "Bye".text.make())
             ],
            ).pOnly(right: 8.0)
          ],
        ))
      ],
    )).white.rounded.square(140).make().py16();
  }
}

class CatalogImage extends StatelessWidget {
    final String image;

  const CatalogImage({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    ).box.rounded.p8.color(MyTheme.cream).make().p16().w40(context);
  }
}
