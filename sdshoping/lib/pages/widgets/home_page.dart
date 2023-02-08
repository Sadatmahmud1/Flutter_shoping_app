import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:sdshoping/pages/models/catalogue.dart';
import 'package:sdshoping/pages/widgets/drawer.dart';
import 'package:sdshoping/pages/widgets/item_widget.dart';
import 'package:sdshoping/pages/widgets/item_widget.dart';
import 'package:flutter/src/services/asset_bundle.dart';



class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 30;

  final String name = "Sadat's";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadingData();
  }
loadingData () async{
   var catalougejson = await rootBundle.loadString("assets/files/catalogue.json");
  var decodeData = jsonDecode(catalougejson);
  var productsData = decodeData["products"];
}

  @override
  Widget build(BuildContext context) {
    final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
    
        title: Center(
          child: Text("Catalogue App",))       
        ),
    body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: ListView.builder(
        itemCount: dummyList.length,
        itemBuilder: (context, index){
          return ItemWidget(
            item: dummyList[index]
          );
        },
      ),
    ),

      drawer: Mydrawer(),
    );
  }
}
