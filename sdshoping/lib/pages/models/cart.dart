import 'package:sdshoping/pages/models/catalogue.dart';

class CartModel {

  // catalog field
  late CatalogModel catalog;

  // Collection of IDs - store Ids of each item
  List<int> get _itemIds => [];

  // Get items in the cart
  List get items => _itemIds.map((id) => catalog.getById(id)).toList();

  // Get total price
  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);

  // Add Item

   // Add items to cart
  void add(Item item) {
    items.add(item);
  }

  // Remove Item

  void remove(Item item) {
    _itemIds.remove(item.id);
  }
}