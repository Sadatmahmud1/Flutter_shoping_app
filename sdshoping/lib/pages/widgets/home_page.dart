import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:sdshoping/pages/models/catalogue.dart';
import 'package:sdshoping/pages/widgets/drawer.dart';
import 'package:sdshoping/pages/widgets/item_widget.dart';
import 'package:sdshoping/pages/widgets/item_widget.dart';
import 'package:flutter/src/services/asset_bundle.dart';



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
      appBar: AppBar(
        title: Text(
          "Catalogue App",
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
            (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
                ? ListView.builder(
                    // itemCount: CatalogueModel.items.length,
                    itemCount: CatalogModel.items?.length,
                    itemBuilder: (context, index) => ItemWidget(
                      item: CatalogModel.items![index],
                    ),
                  )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
      ),
      drawer: Mydrawer(),
    );
  }
}