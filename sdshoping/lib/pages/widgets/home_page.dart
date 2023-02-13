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
                ? GridView.builder(gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                  
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,

                
                ),
                 itemBuilder: (context,index){
                  final item = CatalogModel.items[index];
                  return Card(
                   
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      
                      header: Container( 
                        child: Text(
                          item.name,
                          style: TextStyle(color: Colors.white),
                          
                          ),

                          padding: EdgeInsets.all(8),

                          decoration: BoxDecoration(
                            
                            color: Colors.deepOrange),

                          ),
                      child: Image.network(item.image),
                      
                      footer: Container( 
                        child: Text(
                          item.price.toString(),
                          style: TextStyle(color: Colors.white),
                          
                          ),

                          padding: EdgeInsets.all(8),

                          decoration: BoxDecoration(
                            
                            color: Colors.deepOrange),

                          ),
                      
                    
                    ),
                  );
                 },
                 itemCount: CatalogModel.items.length,
                 )
                : Center(
                    child: CircularProgressIndicator(),
                  ),
      ),
      drawer: Mydrawer(),
    );
  }
}