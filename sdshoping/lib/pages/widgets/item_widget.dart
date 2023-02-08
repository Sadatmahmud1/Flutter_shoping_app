import 'package:flutter/material.dart';
import 'package:sdshoping/pages/models/catalogue.dart';
import 'package:sdshoping/pages/widgets/item_widget.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({Key? key, required this.item})
      : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    
    return Card(
      color: Color.fromARGB(255, 255, 254, 221),
      child: ListTile(
        onTap: () {
          print("${item.name} prassed");
        },
        leading: Image.network(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text("\$${item.price}",
        textScaleFactor: 1.5,
        style: TextStyle(
          color: Colors.deepOrange,
          fontWeight: FontWeight.bold
        ),
        ),
        
        ),
    );
  }
}