import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:sdshoping/pages/models/catalogue.dart';
import 'package:sdshoping/pages/utils/myroutes.dart';
import 'package:sdshoping/pages/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';
import '../home_widgets/catalog_list.dart';
import 'home_widgets/catalog_header.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
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
    await Future.delayed(const Duration(seconds: 2));
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
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.pushNamed(context, MyRoute.cartRoute);
      } ,
      backgroundColor: MyTheme.darkBluishColor,

      child: Icon(CupertinoIcons.cart)
      ),
      backgroundColor: MyTheme.cream,
      body: SafeArea(
          child: Container(
        padding: Vx.mH32,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CatalogHeader(),
          if (CatalogModel.items.isNotEmpty)
            const CatalogList().py12().expand()
          else    
              const CircularProgressIndicator().centered().expand(),
            
        ]),
      )),
    );
  }
}

