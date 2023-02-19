import 'package:sdshoping/pages/models/cart.dart';
import 'package:sdshoping/pages/models/catalogue.dart';
import 'package:velocity_x/velocity_x.dart';

class MyStore extends VxStore {
  late CatalogModel catalog;
  late CartModel cart;

  MyStore(){
    catalog = CatalogModel();
    cart = CartModel();
    cart.catalog = catalog;
  }
}