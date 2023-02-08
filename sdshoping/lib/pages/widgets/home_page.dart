import 'package:flutter/material.dart';
import 'package:sdshoping/pages/models/catalogue.dart';
import 'package:sdshoping/pages/widgets/drawer.dart';
import 'package:sdshoping/pages/widgets/item_widget.dart';
import 'package:sdshoping/pages/widgets/item_widget.dart';
class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Sadat's";
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
