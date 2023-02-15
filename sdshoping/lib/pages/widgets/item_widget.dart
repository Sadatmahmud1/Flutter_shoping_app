import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:sdshoping/pages/models/catalogue.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      color: Colors.white,
      child: ListTile(
        onTap: () {
          if (kDebugMode) {
            print("${item.name} prassed");
          }
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.5,
        // ignore: prefer_const_constructors
        style: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold
        ),
        ),
        
        ),
    );
  }
}